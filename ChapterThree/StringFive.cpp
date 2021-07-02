#include <iostream>
#include <string>
#include <cctype>

using std::cout;
using std::cin;
using std::string;
using std::endl;

int main () {
    string s1 = "Hello World!!";
    
    for (auto &c : s1) {
        c = toupper(c);
    }
    
    cout << s1 <<endl;
    
    string s2;
    cout << s2[0] <<endl;
    return 0;
}
