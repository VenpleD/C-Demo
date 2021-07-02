#include <iostream>

int reused = 42;
void test();
int main () {
    std::cout << reused << std::endl;
    int reused = 0;
    std::cout << reused << std::endl;
    test();
    int i = 100, sum = 0;
    for (int i = 0; i != 10; i++) {
        sum += 1;
    }
    std::cout << i << " " << sum << std::endl;
    
    int z, &ri = z;
    z = 5; ri = 10;
    std::cout << z << " " << ri << std::endl;
    return 0;
}

void test() {
    std::cout << reused <<std::endl;
}
