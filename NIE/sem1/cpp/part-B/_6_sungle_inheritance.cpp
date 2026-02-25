#include <iostream>
using namespace std;
class base
{
public:
    int x, y;
    void getdata()
    {
        cout << "Enter the value of X & Y" << endl;
        cin >> x >> y;
    }
    void putdata()
    {
        cout << "Values of: " << endl;
        cout << "X=" << x << endl;
        cout << "Y=" << y << endl;
    }
};
class drive : public base
{
public:
    void product()
    {
        cout << "Product = " << (x * y);
    }
};
int main()
{
    drive a;
    a.getdata();
    a.putdata();
    a.product();
    return 0;
}