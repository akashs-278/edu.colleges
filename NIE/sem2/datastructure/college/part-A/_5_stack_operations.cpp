#include <iostream>
using namespace std;
int stack[5], n = 5, top = -1;

void push(int ele)
{
    if (top == n - 1)
        cout << "Stack is full"<<endl;
    else
    {
        top = top + 1;
        stack[top] = ele;
    }
}

void pop()
{
    if (top == -1)
        cout << "Stack is underflow."<<endl;
    else
    {
        cout << "Popped element is "<< stack[top] << endl;
        top = top - 1;
    }
}

void display()
{
    if (top >= 0)
    {
        cout << "Stack elements are"<<endl;
        for (int i = top; i >= 0; i--)
            cout << stack[i] << endl;
    }
    else
        cout << "Stack is empty"<<endl;
}

int main()
{
    int ch, ele;
    cout << " 1.Push\n 2.Pop\n 3.Display\n 4.Exit"<<endl;
    do
    {
        cout << "Enter choice : ";
        cin >> ch;
        switch (ch)
        {
        case 1:
            cout << "Enter value to be pushed : ";
            cin >> ele;
            push(ele);
            break;
        case 2:
            pop();
            break;
        case 3:
            display();
            break;
        case 4:
            cout << "Exit";
            break;
        default:
            cout << "Invalid choice!!!"<<endl;
        }
    } while (ch != 4);
    return 0;
}