#include <iostream>
using namespace std;
int main()
{
    int x1, y1, x2, y2, x3, y3;
    cout << "Enter the first complex number:" << endl;
    cin >> x1 >> y1;
    cout << "\n Enter the second complex number:" << endl;
    cin >> x2 >> y2;
    x3 = x1 + x2;
    y3 = y1 + y2;
    cout << "\n Addition of two complex numbers:" << endl;
    cout << x3 << "+" << y3 << "i";
    x3 = x1 * x2 - y1 * y2;
    y3 = x1 * x2 + y1 * y2;
    cout << "\n Multiplication of two complex numbers:" << endl;
    cout << x3 << "+" << y3 << "i";
    return 0;
}