#include <iostream>
#include "Sales_item.h"

int main () {
    Sales_item item1, item2;
    std::cin >> item1 >> item2;
    std::cout << item1 + item2 << std::endl;
    return 0;
}

➜  C++_Demo ./a.out
10 10 10 10 1010 occurs 5 times
➜  C++_Demo ./a.out
1 1 1 1 1
1 occurs 5 times
➜  C++_Demo cd .
➜  C++_Demo open .
➜  C++_Demo touch Sales_item.h
➜  C++_Demo touch SalesOne.cpp
➜  C++_Demo clang++ SalesOne.cpp
➜  C++_Demo ./a.out
