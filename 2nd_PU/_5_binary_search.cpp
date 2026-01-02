#include<iostream>
#include<iomanip>
#include<stdlib.h>

using namespace std;

class binary
{
    private:
        int a[100],n,ele,loc;
    public:
        void getdata();
        void search();
        void display();
};

void binary::getdata()
{
    cout<<"Enter the number of elements : ";
    cin>>n;
    cout<<"Enter the array elements."<<endl;
    for (int i = 0; i < n; i++)
    {
        cin>>a[i];
    }
    cout<<"Enter search element : ";
    cin>>ele;
}

void binary::search()
{
    int beg = 0,end = n-1,mid;;
    loc = -1; 
    while (beg <= end)
    {
        mid = (beg + end)/2;
        if (ele == a[mid])
        {
            loc = mid;
            break;
        }else if (ele<a[mid])
        {
            end = mid - 1;
        }else
        {
            beg = mid + 1;
        }
    }
}

void binary::display()
{
    if(loc != 0)
    {
        cout<<"The element found at position "<<loc<<endl;
    }else
    {
        cout<<"Search is unsuccessful"<<endl;
    }
    
}
int main()
{
    binary b;
    b.getdata();
    b.search();
    b.display();
    return 0;
}