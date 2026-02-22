#include <iostream>
using namespace std;
int binsearch(int a[], int l, int h, int key)
{
    int mid;
    if (l > h)
        return -1;
    mid = (l + h) / 2;
    if (key == a[mid])
        return mid;
    else if (key < a[mid])
        return binsearch(a, l, mid - 1, key);
    else if (key > a[mid])
        return binsearch(a, mid + 1, h, key);
    return -1;
}
int main()
{
    int a[5] = {10, 20, 30, 40, 50};
    int index = 0, key = 0;
    cout << "Enter the key : ";
    cin >> key;
    index = binsearch(a, 0, 4, key);
    if (index == -1)
        cout << "Key not found" <<endl;
    else
        cout << "Key found at index " << index << endl;
        return 0;
}