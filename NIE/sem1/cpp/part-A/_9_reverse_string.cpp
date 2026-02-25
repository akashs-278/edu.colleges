// without using built-in functions
#include <iostream>
using namespace std;
int main()
{
    char str[100];
    int i = 0, len = 0;
    cout << "Enter a string:";
    cin >> str;
    while (str[i] != '\0')
    {
        len++;
        i++;
    }
    cout << "Reverse string:";
    for (i = len; i >= 0; i--)
        cout << str[i];
    return 0;
}