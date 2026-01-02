// This program checks and displas the frequency/repetation of an element in an array
#include <iostream>
#include<stdio.h>
// #include <conio.h> --> header file removed

using namespace std;
class frequency
{
private:
    int a[100],i,n,ele,freq;
public:
    void getdata();
    void findfreq();
    void display();
};

void frequency::getdata()
{

    cout<<"Enter the number of elements : ";
    cin>>n;
    cout<<"Enter the array elements"<<endl;
    for (int i = 0; i < n; i++)
    {
        cin>>a[i];
    }
    cout<<"Enter searching element : ";
    cin>>ele;
    
}

void frequency::findfreq()
{

    freq = 0;
    for (i = 0; i < n; i++)
    {
        if(a[i]==ele)
            freq++;
    }

}

void frequency::display()
{

    if (freq>0){
        cout<<"The frequency of the given element is "<<freq<<endl;
    }else{
        cout<<"The given element doesn't exists in the array."<<endl;
    }
    
}

int main()
{
    frequency f;
    f.getdata();
    f.findfreq();
    f.display();
    printf("\nC : stdio.h\nHello World!\n");
    int n=1,num=2;
    printf("\nn = %d and num = %d\n",n,num);
    return 0;
}
