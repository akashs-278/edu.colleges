#include <iostream>

using namespace std;

int main()
{
    int n;
    cout << "Enter the number of elements" << endl;
    cin >> n;

    int arr[n];
    cout << "Enter array elements" << endl;
    for (int i = 0; i < n ; i++)
    {
        cin>>arr[i];
    }

    int largest=arr[0],smallest=arr[0];
    for (int i =1 ; i<n;i++)
    {
        if (arr[i]>largest)
        {
            largest=arr[i];
        }
        
        else if(arr[i]<smallest)
        {
            smallest=arr[i];
        }
    }

    cout<<"Largest number : "<<largest<<endl;
    cout<<"Smallest number : "<<smallest<<endl;
        return 0;
}