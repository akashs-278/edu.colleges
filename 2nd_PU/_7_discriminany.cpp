#include<iostream>
#include<math.h>
#include<unistd.h>

using namespace std;
class quadratic
{
    private:
    float a,b,c,r1,r2,d;
    public:
        void getdata();
        void compute();
        void display();
};

void quadratic::getdata()
{
    cout<<"Enter the coeffients"<<endl;
    cin>>a>>b>>c;
}
void quadratic::compute()
{
    d = b*b-4*a*c;
    if(d==0)
    {
        cout<<"Roots are equal"<<endl;
        r1 = b/(2*a);
        r2 = r1;
    }else if (d>0)
    {
        cout<<"roots are positive and different"<<endl;
        r1=(-b+sqrt(d))/(2*a);
        r2 = ( -b-sqrt(d))/(2*a);
    }else
    {
        cout<<"Roots are imaginary."<<endl;
        exit(0);
    }
    
    
}
void quadratic::display()
{
    cout<<"First root = "<<r1<<endl;
    cout<<"Second root = "<<r2<<endl;
}



int main()
{
    quadratic q;
    q.getdata();
    q.compute();
    q.display();
    return 0;
}