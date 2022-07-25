#include "common.h"


extern "C" void uart_write_helper(int uart_data){
    char temp=uart_data;
    putchar(temp);
}