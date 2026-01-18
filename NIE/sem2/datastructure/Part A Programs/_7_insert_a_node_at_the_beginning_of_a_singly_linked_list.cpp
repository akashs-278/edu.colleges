#include <iostream>
using namespace std;

// Define node structure
struct Node {
    int data;
    Node* next;
};

Node* head = NULL;

// Insert at beginning
void insertAtBeginning(int value) {
    Node* newNode = new Node();
    newNode->data = value;
    newNode->next = head;
    head = newNode;
}

// Display linked list
void display() {
    Node* temp = head;
    if (temp == NULL) {
        cout << "Linked list is empty.\n";
        return;
    }
    cout << "Linked list elements: ";
    while (temp != NULL) {
        cout << temp->data << " -> ";
        temp = temp->next;
    }
    cout << "NULL\n";
}

int main() {
    int n, value;

    cout << "Enter number of nodes to insert: ";
    cin >> n;

    for (int i = 0; i < n; i++) {
        cout << "Enter value: ";
        cin >> value;
        insertAtBeginning(value);
    }

    display();

    return 0;
}
