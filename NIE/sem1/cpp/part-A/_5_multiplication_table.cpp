#include <iostream>
using namespace std;
int main()
{
    int number;
    cout << "Enter number to display its MT:" << endl;
    cin >> number;
    cout << "multiplication table" << endl;
    for (int i = 1; i <= 10; i++)
        cout << number << "*" << i << "=" << number * i << endl;
    return 0;
}