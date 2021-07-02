#include <iostream>

typedef char * pstring;

int main () {
     char * const*a = 0;
    const pstring *ps = a;
    std::cout << ps << std::endl;
    
    const int i = 42;
    auto *p = &i;
    std::cout << *p << i << std::endl;
    
    *p = 32;
    std::cout << *p << i << std::endl;
    return 0;
}
