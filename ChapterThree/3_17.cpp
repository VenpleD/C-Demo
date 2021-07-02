#include <iostream>
#include <string>
#include <vector>
#include <cctype>


using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::vector;

int main () {
    
    string s;
    vector<string> v1;
    while (cin >> s) {
        v1.push_back(s);
    }
    for (auto s1 : v1) {
        for (auto &c1 : s1) {

            c1 = toupper(c1);
        }
    }
    cout << "分割" << endl;
    for (auto s1 : v1) {
        cout << s1 << endl;
    }
    
    return 0;
}
