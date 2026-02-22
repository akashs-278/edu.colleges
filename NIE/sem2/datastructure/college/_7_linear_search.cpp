#include <iostream>
using namespace std;

int main() {
    int a[5]={10,20,30,40,50},key,flag=0,i;
    cout<<"Enter search key";
    cin>>key;
    for ( i = 0; i < 5; i++)
    {
        if (key==a[i])
        {
            flag=1;
            break;
        }
        
    }
    
    if (flag==1)
    {
        cout<<"Key is found at location "<<i<<endl;
    }
    else{
        cout<<"Key not found"<<endl;
    }
    
    return 0;
}