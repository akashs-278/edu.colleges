// Program to demonstrate the usage of default and parameterized constructors.
#include <iostream>
using namespace std;
class rectangle
{
    float width, length;

public:
    rectangle()
    {
        width = 4.5;
        length = 2.6;
    }
    rectangle(float a, float b)
    {
        width = a;
        length = b;
    }
    void area_rect()
    {
        float area;
        area = width * length;
        cout << "Area of a rectangle is " << area << endl;
    }
};
int main()
{
    rectangle r1;
    rectangle r2(10.0, 20.0);
    cout << "Default constructor:" << endl;
    r1.area_rect();
    cout << "Parameterized constructor:" << endl;
    r2.area_rect();
    return 0;
}
