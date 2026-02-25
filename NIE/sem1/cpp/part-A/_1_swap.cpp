#include <iostream>
using namespace std;
int main()
{
    int a, b, temp;
    cout << "Enter the value of a:";
    cin >> a;
    cout << "Enter the value of b:";
    cin >> b;
    cout << "Before swapping:" << endl;
    cout << "a=" << a << endl;
    cout << "b=" << b << endl;
    temp = a;
    a = b;
    b = temp;
    cout << "After swapping with temp var:" << endl;
    cout << "a=" << a << endl;
    cout << "b=" << b << endl;
    a = a + b;
    b = a - b;
    a = a - b;
    cout << "After swapping without temp var:" << endl;
    cout << "a=" << a << endl;
    cout << "b=" << b << endl;
    return 0;
}