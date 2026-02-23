#include <iostream>

using namespace std;

int main() {
    int i,j,size,min,temp,a[5];
    cout<<"Enter the size of the array : "<<endl;
    cin>>size;
    cout<<"Enter the elements into array : "<<endl;
    for ( i = 0; i < size; i++)
    {
        cin>>a[i];
    }
    

    for ( i = 0; i < size; i++)
    {
        min=i;
        for ( j = i +1; j < size; j++)
        {
            if (a[j]<a[min])
            {
                min=j;
            }
            
        }
        temp=a[i];
            a[i]=a[min];
            a[min]=temp;
        
    }
    
    cout<<"The sorted array is ";
    for ( i = 0; i < size; i++)
    {
        cout<<"\t"<<a[i];
    }
    cout<<endl;
    
    return 0;
}