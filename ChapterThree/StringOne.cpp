#include <iostream>
#include <string>

using std::string;
using std::cout;
using std::cin;
using std::endl;

int main() {
    string s1;
    string s2 = s1;
    string s3 = "hiya";
    string s4(10, 'c');
    
    string s;
    cin >> s;
    cout << s << endl;
    
    return 0;
}
