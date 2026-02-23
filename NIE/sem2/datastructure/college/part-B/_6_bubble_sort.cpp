#include <iostream>

using namespace std;

int main() {
    int i,j,n,temp,a[10];
    cout<<"Enter the size of the array : "<<endl;
    cin>>n;
    cout<<"Enter the elements into array : "<<endl;
    for ( i = 0; i < n; i++)
    {
        cin>>a[i];
    }
    

    for ( i = 1; i < n; i++)
    {
        for ( j = 0; j < n; j++)
        {
            if (a[j]>a[j+1])
            {
            temp=a[j];
            a[j]=a[j+1];
            a[j+1]=temp;
            }
        }
    }
    
    cout<<"The sorted array is ";
    for ( i = 0; i < n; i++)
    {
        cout<<"\t"<<a[i];
    }
    cout<<endl;
    
    return 0;
}