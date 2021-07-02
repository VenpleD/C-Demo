#include <iostream>

int main () {
    int i = 42;
    int *pi = &i;
    *pi = *pi * *pi;
    std::cout << i << " " << *pi << std::endl;
    const int p = 10;
    int const *p2 = &p;
    std::cout << *p2 << std::endl;
    p2 = pi;
    std::cout << *p2 << std::endl;
    
    int null = 0, *p3 = &null;
    std::cout << *p3 << std::endl;
    return 0;
}
