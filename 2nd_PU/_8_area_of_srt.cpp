#include<iostream>
#include<math.h>

using namespace std;
class funoverload
{
    private:
        float s;
    public:
        float area(float a)
        {
            return (a*a);
        }
        float area(float a,float b)
        {
            return (a*b);
        }
        float area(float a,float b,float c)
        {
            s = (a+b+c)/2.0;
            return (sqrt(s*(s-a)*(s-b)*(s-c)));
        }
};
int main()
{
    float  x,y,z;
    funoverload f1;
    cout<<"Enter the side of a square."<<endl;
    cin>>x;
    cout<<"Area of the square = "<<f1.area(x)<<endl;

    cout<<"\nEnter the sides of a rectangle."<<endl;
    cin>>x>>y;
    cout<<"Area of the rectangle = "<<f1.area(x,y)<<endl;

    cout<<"\nEnter the three side of a triangle."<<endl;
    cin>>x>>y>>z;
    cout<<"Area of the triangle = "<<f1.area(x,y,z)<<endl;
    return 0;
}