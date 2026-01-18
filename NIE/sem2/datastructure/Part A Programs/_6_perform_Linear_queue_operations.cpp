#include <iostream>
using namespace std;

#define MAX 5   // Maximum size of queue

int queue[MAX];
int front = -1, rear = -1;

// Enqueue operation
void enqueue() {
    int value;
    if (rear == MAX - 1) {
        cout << "Queue Overflow! Cannot insert.\n";
    } else {
        if (front == -1)
            front = 0;
        cout << "Enter value to insert: ";
        cin >> value;
        rear++;
        queue[rear] = value;
        cout << "Value inserted successfully.\n";
    }
}

// Dequeue operation
void dequeue() {
    if (front == -1 || front > rear) {
        cout << "Queue Underflow! Cannot delete.\n";
    } else {
        cout << "Deleted value: " << queue[front] << endl;
        front++;
    }
}

// Display operation
void display() {
    if (front == -1 || front > rear) {
        cout << "Queue is empty.\n";
    } else {
        cout << "Queue elements are:\n";
        for (int i = front; i <= rear; i++) {
            cout << queue[i] << " ";
        }
        cout << endl;
    }
}

int main() {
    int choice;

    do {
        cout << "\n--- Linear Queue Menu ---\n";
        cout << "1. Enqueue\n";
        cout << "2. Dequeue\n";
        cout << "3. Display\n";
        cout << "4. Exit\n";
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
            case 1: enqueue(); break;
            case 2: dequeue(); break;
            case 3: display(); break;
            case 4: cout << "Exiting program.\n"; break;
            default: cout << "Invalid choice!\n";
        }
    } while (choice != 4);

    return 0;
}
