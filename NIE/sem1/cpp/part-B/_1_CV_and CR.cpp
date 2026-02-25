#include <iostream>
using namespace std;
void val_increment(int s)
{
    s = s + 500;
}
void ref_increment(int &s)
{
    s = s + 500;
}
int main()
{
    int sal = 30000;
    cout << "Call by value:" << endl;
    cout << "Salary before increment : " << sal << endl;
    val_increment(sal);
    cout << "Salary after increment : " << sal << endl;
    cout << endl;
    cout << "Call by reference:" << endl;
    cout << "Salary before increment : " << sal << endl;
    ref_increment(sal);
    cout << "Salary after increment : " << sal << endl;
    return 0;
}