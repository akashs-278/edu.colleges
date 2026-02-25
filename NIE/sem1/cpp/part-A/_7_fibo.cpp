#include <iostream>
using namespace std;
int main()
{
    int terms, Fn1 = 0, Fn2 = 1, Fn;
    cout << "enter the number of terms (>2) for Fibonacci Series" << endl;
    cin >> terms;
    cout << "Fibonacci series" << endl;
    cout << Fn1 << endl;
    cout << Fn2 << endl;
    for (int i = 3; i <= terms; i++)
    {
        Fn = Fn1 + Fn2;
        cout << Fn << endl;
        Fn1 = Fn2;
        Fn2 = Fn;
    }
    return 0;
}