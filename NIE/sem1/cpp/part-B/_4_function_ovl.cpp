// Program to demonstrate function overloading.
#include <iostream>
using namespace std;
int add(int a, int b)
{
    return a + b;
}
int add(int a, int b, int c)
{
    return a + b + c;
}
float add(float a, float b)
{
    return a + b;
}
int main()
{
    cout << "Sum of two integer values = " << add(151, 205) << endl;
    cout << "Sum of three integer values = " << add(24, 121, 64) << endl;
    cout << "Sum of two float values = " << add(25.5f, 75.5f) << endl;
}