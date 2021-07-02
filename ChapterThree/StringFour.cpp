#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::string;

int main () {
    string s1;
    string result;
    while (cin >> s1) {
        result = result + ' ' + s1;
    }
    cout << result << endl;
    return 0;
}

