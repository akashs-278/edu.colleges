#include<iostream>
#include<iomanip>
#include<stdlib.h>

using namespace std;
class sorting
{
    private:
        int a[100],n,temp;
    public:
        void getdata();
        void sort();
        void display();
};

void sorting::getdata()
{
    cout<<"Enter the number of elements : ";
    cin>>n;
    cout<<"Enter the array elements."<<endl;
    for (int i = 0; i < n; i++)
    {
        cin>>a[i];
    }
}

void sorting::sort()
{
    for (int i = 1; i < n; i++)
    {
        int j = i;
        while (j>=1)
        {
            if (a[j]<a[j-1])
            {
                temp = a[j];
                a[j]=a[j-1];
                a[j-1]=temp;
            }
            j--;
        }
        
    }
    
}

void sorting::display()
{
    cout<<"The array after sorting is"<<endl;
    for (int i = 0; i < n; i++)
    {
        cout<<setw(4)<<a[i];
    }
    cout<<endl;
}

int main()
{
    sorting s;
    s.getdata();
    s.sort();
    s.display();
    return 0;
}