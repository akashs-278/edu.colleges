#include<iostream>


using namespace std;
class interest
{
private:
    float p, t, r, si;
public:
    void getdata();
    void compute();
    void display();
};

void interest::getdata()
{
    cout<<"Enter the following details to calcullate simple interest"<<endl;
    cout<<"Principal : "<<endl;
    cin>>p;
    cout<<"Time  : "<<endl;
    cin>>t;
    cout<<"Rate : "<<endl;
    cin>>r;
}

void interest::compute()
{
    si = (p*t*r)/100;
}

void interest::display()
{
    cout<<"Simple interest = "<<si<<endl;
}
int main()
{
    interest i;
    i.getdata();
    i.compute();
    i.display();
    return 0;
}