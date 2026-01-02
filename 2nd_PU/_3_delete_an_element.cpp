// Delete an element from an array from a given position

#include<iostream>
#include<iomanip>
#include<stdlib.h>

using namespace std;

class deletion{
    private:
        int a[100],i,n,ele,p;
    public:
        void getdata();
        void remove();
        void display();
};

void deletion::getdata()
{
    cout<<"Enter the number of elements : ";
    cin>>n;
    cout<<"Enter array elements."<<endl;
    for (int i = 0; i < n; i++)
    {
        cin>>a[i];
    }
    cout<<"Eneter the position : ";
    cin>>p;
}

void deletion::remove()
{
    if(p>n-1)
    {
        cout<<"Invalid Input!"<<endl;
    }else{
        ele = a[p];
        for ( i = p; i < n-1; i++)
        {
            a[i]=a[i+1];
        }
        n = n - 1;
        cout<<"The element removed sucessfully."<<endl;
    }
}

void deletion::display()
{
    cout<<"The array after deletion is "<<endl;
    for ( i = 0; i < n; i++)
    {
        cout<<a[i]<<endl;
    }  
}

int main()
{
    deletion d;
    d.getdata();
    d.remove();
    d.display();
    return 0;
}