#include <iostream>
using namespace std;
int main()
{
    int a, b, res;
    char op;
    cout << "Simple calculator" << endl;
    cout << "enter values of a,op & b" << endl;
    cin >> a >> op >> b;
    switch (op)
    {
    case '+':
        res = a + b;
        cout << res << endl;
        break;
    case '-':
        res = a - b;
        cout << res << endl;
        break;
    case '*':
        res = a * b;
        cout << res << endl;
        break;
    case '/':
        res = a / b;
        cout << res << endl;
        break;
    case '%':
        res = a % b;
        cout << res << endl;
        break;
    default:
        cout << "Invalid Operation";
        break;
    }
}