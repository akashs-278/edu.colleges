#include<iostream>


using namespace std;

int main()
{
    cout<<"Enter a number to generate Fibo Series : ";
    int num,a=0,b=1,c;
    cin>>num;
    for (int i=0;i<=num;i++)
    {
        cout<<a<<" ";
        c=a+b;
        a=b;
        b=c;   

    }
    return 0;
}