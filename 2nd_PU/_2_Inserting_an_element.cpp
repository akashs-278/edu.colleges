// inserting an element into an array at a given position
#include<iostream>
#include<iomanip>
#include<stdlib.h>

using namespace std;

class insertion
{
private:
    int a[100],i,n,ele,p;
public:
    void getdata();
    void insert();
    void display();
};

void insertion::getdata()
{

    cout<<"Enter the number of elements : ";
    cin>>n;
    cout<<"Enter the array elements."<<endl;
    for (int i = 0; i < n; i++)
    {
        cin>>a[i];
    }
    cout<<"Enter the item to be insert : ";
    cin>>ele;
    cout<<"Enter the position : ";
    cin>>p;
    
}

void insertion::insert()
{

    if (p>n)
    {
        cout<<"It is invalid position"<<endl;
        exit(0);
    }else{
        for ( i = n-1; i >= p; i--)
        {
            a[i+1]=a[i];
        }
        a[p] = ele;
        n = n + 1;
        cout<<"Element inserted successfully."<<endl;
        
    }
}

void insertion::display()
{

    cout<<"The array after insertion is"<<endl;
    for (int i = 0; i < n; i++)
    {
        cout<<setw(4)<<a[i];
    }
    cout<<endl;
}


int main()
{
    insertion I;
    I.getdata();
    I.insert();
    I.display();
    return 0;
}