#include <iostream>
using namespace std;

#define MAX 5   // Maximum size of stack

int stack[MAX];
int top = -1;

// Push operation
void push() {
    int value;
    if (top == MAX - 1) {
        cout << "Stack Overflow! Cannot push.\n";
    } else {
        cout << "Enter value to push: ";
        cin >> value;
        top++;
        stack[top] = value;
        cout << "Value pushed successfully.\n";
    }
}

// Pop operation
void pop() {
    if (top == -1) {
        cout << "Stack Underflow! Cannot pop.\n";
    } else {
        cout << "Popped value: " << stack[top] << endl;
        top--;
    }
}

// Display operation
void display() {
    if (top == -1) {
        cout << "Stack is empty.\n";
    } else {
        cout << "Stack elements are:\n";
        for (int i = top; i >= 0; i--) {
            cout << stack[i] << " ";
        }
        cout << endl;
    }
}

int main() {
    int choice;

    do {
        cout << "\n--- Stack Operations Menu ---\n";
        cout << "1. Push\n";
        cout << "2. Pop\n";
        cout << "3. Display\n";
        cout << "4. Exit\n";
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
            case 1: push(); break;
            case 2: pop(); break;
            case 3: display(); break;
            case 4: cout << "Exiting program.\n"; break;
            default: cout << "Invalid choice!\n";
        }
    } while (choice != 4);

    return 0;
}
