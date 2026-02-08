// Tower of Hanoi
#include <iostream>
#include <stdio.h>
using namespace std;
void TOH(int n,char source,char destination, char temp)
{
    if (n==1)
    {
        cout<<"Move disk 1 from "<<source<<" to "<<destination<<endl;
        return;
    }
    TOH(n-1,source,temp,destination);
    cout<<"Move disk "<<n<<" from "<<source<<" to "<<destination<<endl;
    TOH(n-1,temp,destination,source);
}

int main() {
    int disks;
    cout<<"Enter the number of disks : ";
    cin>>disks;
    TOH(disks,'A','B','C');
    
    return 0;
}