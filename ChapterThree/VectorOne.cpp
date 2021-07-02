#include <iostream>
#include <string>
#include <vector>

using std::cin;
using std::cout;
using std::endl;
using std::vector;

int main () {
    int i;
    vector<int> v1;
    while (cin >> i) {
        v1.push_back(i);
    }
    
    for (auto a : v1) {
        cout << a << endl;
    }
    return 0;
}
