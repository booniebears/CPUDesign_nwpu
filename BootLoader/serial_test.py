import serial
if __name__ == '__main__':
    # ser = serial.Serial()
    # ser.port = 'COM3'
    # ser.baudrate = 115200
    # print(ser)
    print("============================================")
    ser = serial.Serial('COM3', 115200)
    success_bytes = ser.write(b'This is data for test\r\n')
    # b表示bytes类型, 直接发送字符串报错
    print(success_bytes)  # 发送数据长度

    data = ser.read(11)  # 读取11字符

'''
# 打印内容如下：
Serial<id=0x1c695f0d340, open=True>
(port='COM1',          -> 读或者写端口
baudrate=115200,       -> 波特率
bytesize=8,            -> 字节大小
parity='N',            -> 校验位
stopbits=1,            -> 停止位
timeout=None,          -> 超时设置
xonxoff=False,         -> 软件流控
rtscts=False,          -> 硬件流控
dsrdtr=False)          -> 硬件流控
'''
