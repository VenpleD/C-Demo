#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::string;


int main () {
    string s1, s2;
    cout << "请输入两个字符串" << endl;
    cin >> s1 >> s2;
    if (s1 >= s2) {
        cout << s1 << endl;
    } else {
        cout << s2 << endl;
    }
//    cout << s1 == s2 ? s1 : s1 > s2 ? s1 : s2 << endl;
    
    cout << (s1.size() > s2.size() ? s1 : s2) << endl;
    return 0;
}

