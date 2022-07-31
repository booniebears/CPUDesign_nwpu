#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <cstdint>
#include <cassert>
#include <pthread.h>
#include <iostream>

// #define VM_SAVEABLE

#define HINT                                                                   \
    std::cout << _warning("<<<<<\t" + std::string(__FILE__) + ":" +            \
                          std::to_string(__LINE__) + "\t>>>>>") +              \
                     "\n";
std::string _warning(std::string content);