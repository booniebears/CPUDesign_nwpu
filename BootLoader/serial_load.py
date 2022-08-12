#!/usr/bin/env python

import sys
import os
import serial
import struct
import time
import random
import binascii
import select
import array
import getopt
from elftools.elf.elffile import ELFFile
from elftools.elf.descriptions import describe_p_type
from tqdm import tqdm, trange

SERIAL_DELAY = 0.00001
SERIAL_DEVICE = ""
FLASH_BASE = 0xbe000000
USB_BASE = 0xbc020000
FLASH_BLKSIZE = 128 * 1024
FLASH_SIZE = 64 * FLASH_BLKSIZE


class ProgressPH(object):
    class fake_tqdm():
        def __init__(self, *args):
            pass

        def update(self, n):
            pass

        def close(self):
            pass

    def __init__(self):
        pass

    def __exit__(self, *args, **kwds):
        pass

    def __enter__(self, *args, **kwds):
        return type(self).fake_tqdm()


def write_uart(buf):
    for b in buf:
        ser.write(b)
        ser.flush()
        if SERIAL_DELAY > 0:
            time.sleep(SERIAL_DELAY)


def write_ram(start, content, progress=False): # write_ram将写数据初始地址start,数据长度以及数据本身写入RAM;
    # progress可显示进度条;
    time.sleep(0.01)
    write_uart('0')
    x = ser.read(1)
    if not x:
        print("ack timed out")
        raise IOError
        return
    assert x == '~'

    write_uart(struct.pack('<I', start))
    time.sleep(0.01)
    write_uart(struct.pack('<I', (len(content) + 3) / 4))

    time.sleep(0.01)

    cnt = 0
    for b in (tqdm(content, desc="Writing", unit='B', unit_scale=True) if progress else content):
        write_uart(b)
        cnt += 1

    while cnt % 4 != 0:  # 补齐为4的整数倍
        write_uart('\x00')
        cnt += 1

    if progress:
        print("%d bytes written" % cnt)


def read_ram(start, length, progress=False):
    time.sleep(0.01)
    write_uart('1')
    x = ser.read(1)
    if not x:
        print("ack timed out")
        raise IOError
        return
    assert x == '~'

    length = (length + 3) / 4 * 4  # round up

    write_uart(struct.pack('<I', start))
    time.sleep(0.01)
    write_uart(struct.pack('<I', length / 4))

    buf = ''
    with (tqdm(total=length, desc="Reading", unit='B', unit_scale=True) if progress else ProgressPH()) as bar:
        BLOCK = 256
        while length > 0:
            s = ser.read(BLOCK if BLOCK <= length else length)
            bar.update(len(s))
            length -= len(s)
            buf += s

    if len(buf) < length:
        print("read data timed out")
        raise IOError
        return
    if progress:
        print("%d bytes read" % len(buf))
    return buf


def go_ram(start):
    time.sleep(0.01)
    write_uart('4')
    x = ser.read(1)
    if not x:
        print("ack timed out")
        raise IOError
        return
    assert x == '~'

    write_uart(struct.pack('<I', start))
    print("Go: 0x%x" % start)


def uart_loopback_test():
    print("ser.name = " + ser.name)
    print("ser.port = " + ser.port)
    time.sleep(0.01)
    write_uart('5'.encode()) # 没写进去？看一下
    x = ser.read(1)
    print(x)
    if not x:
        print("ack timed out")
        raise IOError
        return
    assert x == '~'

    while True:
        t = random.randint(0, 2 ** 32 - 1)
        sent = struct.pack('<I', t)  # '<I' 表示小端,pack之后送出四个字节的数据
        write_uart(sent)
        recv = ser.read(4)
        if not recv:
            print("read data timed out")
            raise IOError
            return
        for i in range(4):
            assert recv[i] == sent[i]


def ram_test():
    offset = 0x80000000
    while True:
        size = 64 * 1024
        data = ''.join(chr(random.randint(0, 255)) for _ in range(size))

        print("offset=0x%x" % offset)

        write_ram(offset, data, True)
        # raw_input("Press Enter to continue...")
        recv = read_ram(offset, size, True)

        if data != recv:
            print(binascii.hexlify(data))
            print(binascii.hexlify(recv))
            for x in range(size):
                if data[x] != recv[x]:
                    print("%x!=%x @ 0x%x" % (ord(data[x]), ord(recv[x]), x))
            break
        offset += size
        offset &= 0x803fffff


def read_flash(offset, size):
    # write_ram(FLASH_BASE, "\x20\x00\x00\x00")
    # write_ram(FLASH_BASE, "\xD0\x00\x00\x00")
    # time.sleep(0.5)

    write_ram(FLASH_BASE, "\xff\x00\x00\x00")
    orig = read_ram(FLASH_BASE + offset * 2, size * 2, True)
    result = []
    for i in range(0, len(orig), 4):  # only lower 16-bits of 32-bits data are valid
        result.append(orig[i])
        result.append(orig[i + 1])
    if size % 2:
        result.pop()
    return ''.join(result)


def wait_flash():
    while True:
        write_ram(FLASH_BASE, "\x70\x00\x00\x00")
        buf = read_ram(FLASH_BASE, 4)
        # print "Status: %s" % binascii.hexlify(buf[0])
        if (ord(buf[0]) & 0x80) != 0:
            break
        # print "Waiting..."


def write_flash(f):
    size = os.fstat(f.fileno()).st_size
    blocks = (size + FLASH_BLKSIZE - 1) / FLASH_BLKSIZE
    print("File size: %d" % size)
    print("Flash blocks: %d" % blocks)

    # !!! clear lock bits !!!
    write_ram(FLASH_BASE, "\x60\x00\x00\x00")
    write_ram(FLASH_BASE, "\xD0\x00\x00\x00")
    wait_flash()

    for i in tqdm(range(0, blocks), desc='Erasing:', unit='Blocks'):
        write_ram(FLASH_BASE + i * FLASH_BLKSIZE * 2, "\x20\x00\x00\x00")
        write_ram(FLASH_BASE + i * FLASH_BLKSIZE * 2, "\xD0\x00\x00\x00")
        wait_flash()
    content = f.read()

    write_uart('2')
    x = ser.read(1)
    if not x:
        print("ack timed out")
        raise IOError
        return
    assert x == '~'

    if size % 2 != 0:
        content += '\x00'
        size += 1

    write_uart(struct.pack('<I', FLASH_BASE))
    time.sleep(0.01)
    write_uart(struct.pack('<I', size / 2))
    time.sleep(0.01)

    for i in tqdm(range(0, size, 2), desc='Programming:', unit='B', unit_scale=True):
        # st = time.time()
        write_uart([content[i], content[i + 1], '\x00', '\x00'])
        # while time.time()-st < 0.000175:
        #     pass
        # print time.time()-st
    time.sleep(0.01)
    print("Done")


def usb_test():
    write_ram(USB_BASE, "\x0e\x00\x00\x00")
    buf = read_ram(USB_BASE + 4, 4)
    print("Rev: %s" % binascii.hexlify(buf[0]))


def flash_test():
    write_ram(FLASH_BASE, "\x90\x00\x00\x00")
    buf = read_ram(FLASH_BASE, 4)
    print("Manufacture code: %s" % binascii.hexlify(buf[0]))

    write_ram(FLASH_BASE, "\x90\x00\x00\x00")
    buf = read_ram(FLASH_BASE + 4, 4)
    print("Device code: %s" % binascii.hexlify(buf[0]))

    write_ram(FLASH_BASE, "\x90\x00\x00\x00")
    buf = read_ram(FLASH_BASE + 8, 4)
    print("Lock bits: %s" % binascii.hexlify(buf[0]))

    write_ram(FLASH_BASE, "\xff\x00\x00\x00")
    buf = read_ram(FLASH_BASE, 4)
    print("data: %s" % binascii.hexlify(buf))

    # !!! clear lock bits !!!
    write_ram(FLASH_BASE, "\x60\x00\x00\x00")
    write_ram(FLASH_BASE, "\xD0\x00\x00\x00")
    wait_flash()

    # !!! erase test !!!
    write_ram(FLASH_BASE, "\x20\x00\x00\x00")
    write_ram(FLASH_BASE, "\xD0\x00\x00\x00")
    wait_flash()

    while True:
        write_ram(FLASH_BASE, "\x70\x00\x00\x00")
        buf = read_ram(FLASH_BASE, 4)
        print("Status: %s" % binascii.hexlify(buf[0]))
        if (ord(buf[0]) & 0x80) != 0:
            break
        print("Waiting...")

    write_ram(FLASH_BASE, "\xff\x00\x00\x00")
    buf = read_ram(FLASH_BASE, 4)
    print("data: %s" % binascii.hexlify(buf))

    # !!! program test !!!
    write_ram(FLASH_BASE, "\x40\x00\x00\x00")
    write_ram(FLASH_BASE, "\x55\x55\x00\x00")

    while True:
        write_ram(FLASH_BASE, "\x70\x00\x00\x00")
        buf = read_ram(FLASH_BASE, 4)
        print("Status: %s" % binascii.hexlify(buf[0]))
        if (ord(buf[0]) & 0x80) != 0:
            break
        print("Waiting...")

    write_ram(FLASH_BASE, "\xff\x00\x00\x00")
    buf = read_ram(FLASH_BASE, 4)
    print("data: %s" % binascii.hexlify(buf))


def load_binary_file(f, addr):
    size = os.fstat(f.fileno()).st_size
    print("File size: %d" % size)
    print("Load address: 0x%x" % addr)

    write_ram(addr, f.read(), True)


def load_elf_and_run(f):
    elffile = ELFFile(f)

    for segment in elffile.iter_segments():
        t = describe_p_type(segment['p_type'])
        print(
            "Program Header: Size: %d, Virtual Address: 0x%x, Type: %s" % (segment['p_filesz'], segment['p_vaddr'], t))
        if not (segment['p_vaddr'] & 0x80000000):
            continue
        if segment['p_filesz'] == 0 or segment['p_vaddr'] == 0:
            print("Skipped")
            continue
        write_ram(0xa0000000 | segment['p_vaddr'], segment.data(), True)

    print("Entry: 0x%x" % elffile['e_entry'])
    go_ram(elffile['e_entry']) # 指向操作系统内核ELF 程序入口地址


def start_terminal():
    import termios, tty
    fd = sys.stdin.fileno()
    old = termios.tcgetattr(fd)
    new = termios.tcgetattr(fd)
    new[3] = new[3] & ~termios.ICANON & ~termios.ECHO & ~termios.ISIG & ~termios.IEXTEN
    new[6][termios.VMIN] = 0
    new[6][termios.VTIME] = 0
    try:
        # tty.setraw(fd)
        termios.tcsetattr(fd, termios.TCSADRAIN, new)
        print("Terminal enabled, press Ctrl+] to quit")
        slt_list = [sys.stdin, ser]
        while True:
            ready = select.select(slt_list, [], [])[0]
            for f in ready:
                recv = f.read()
                if f.fileno() == fd:
                    # print binascii.hexlify(recv)
                    assert ord(recv[0]) != 0x1d
                    write_uart(recv)
                else:
                    sys.stdout.write(recv)
                    sys.stdout.flush()
    except Exception as e:
        print("Closing terminal...")
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old)


def string2number(aString):
    if aString.startswith("0x") or aString.startswith("0X"):
        return int(aString, 16)
    elif aString.startswith("0"):
        return int(aString, 8)
    else:
        return int(aString)


def usage():
    print("Usage: %s <options>" % sys.argv[0])
    print("  NaiveBootloader host program.")
    print("  Options are:")
    print("""
    -h --help          Display this information
    -s <device>
    --serial <device>  Specify serial port
    -b <baud>
    --baud <baud>      Specify serial baudrate
    -t <test>
    --test <test>      Run a test
        uart           UART loopback test
        ram            RAM read/write test
        flash          Flash access test
    -l <elf_file>      Load ELF to RAM and run
    --bin <address>    Load binary file, specify load address
    -g <address>
    --run <address>    Jump to <address> and run
    -p <bin_file>      Program file to Flash
    -r <bin_file>      Read from Flash to file
    --size <size>      Read only <size> bytes
    --term             Start a terminal after loading
""")


if __name__ == "__main__":
    # global SERIAL_DEVICE, SERIAL_DELAY
    # if len(sys.argv) <= 1:
    #     usage()
    #     sys.exit(2)
    usage()
    while True:
        try:
            opts, args = getopt.getopt(sys.argv[1:], "hs:b:t:p:r:l:fg:",
                                       ["help", "serial=", "baud=", "bin=", "test=", "term", "size=", "run="])
        except getopt.GetoptError as e:
            usage()
            sys.exit(2)
        baud = 115200
        tests = None
        prog_file = None
        load_file = None
        read_file = None
        read_size = FLASH_SIZE
        file_binary = False
        binary_base = 0
        term = False
        go = False
        go_addr = 0
        for opt, arg in opts:
            if opt in ('-h', '--help'):
                usage()
                # sys.exit(0)
            elif opt in ('-s', '--serial'):
                SERIAL_DEVICE = arg
            elif opt in ('-b', '--baud'):
                baud = int(arg)
            elif opt in ('-t', '--test'):
                tests = arg
            elif opt in ('--bin'):
                file_binary = True
                binary_base = string2number(arg)
            elif opt in ('-p'):
                prog_file = arg
            elif opt in ('-r'):
                read_file = arg
            elif opt in ('--size'):
                read_size = string2number(arg)
            elif opt in ('-l'):
                load_file = arg
            elif opt in ('-f'):
                SERIAL_DELAY = 0
            elif opt in ('--term'):
                term = True
            elif opt in ('-g', '--run'):
                go = True
                go_addr = string2number(arg)

        if not SERIAL_DEVICE:
            print('Please specify serial port!')
            sys.exit(1)

        global ser
        ser = serial.Serial(SERIAL_DEVICE, baud, timeout=1)

        if tests:
            if tests == 'uart':
                print(ser.write("\x65".encode()))
                # uart_loopback_test()
                print(ser.read(1))
            elif tests == 'ram':
                ram_test()
            elif tests == 'flash':
                flash_test()
            elif tests == 'usb':
                usb_test()
            else:
                print("Unknown test: '%s'" % tests)
                sys.exit(1)
            sys.exit(0)
        if read_file:
            with open(read_file, 'wb') as f:
                f.write(read_flash(0, read_size))
            sys.exit(0)
        if prog_file:
            with open(prog_file, 'rb') as f:
                write_flash(f)
            sys.exit(0)
        if load_file:
            with open(load_file, 'rb') as f:
                if not file_binary:
                    load_elf_and_run(f)
                else:
                    load_binary_file(f, binary_base)

        if go:
            go_ram(go_addr)

        if term:
            start_terminal()
