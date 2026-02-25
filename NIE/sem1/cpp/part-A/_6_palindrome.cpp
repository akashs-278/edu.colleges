// checks number only
#include <iostream>
using namespace std;
int main()
{
    int number, origin, revnum = 0, remain;
    cout << "enter a number to check palindrome:" << endl;
    cin >> number;
    origin = number;
    while (number > 0)
    {
        remain = number % 10;
        revnum = revnum * 10 + remain;
        number /= 10;
    }
    if (origin == revnum)
        cout << origin << " is a palindrome" << endl;
    else
        cout << origin << " is not a palindrome" << endl;
    return 0;
}