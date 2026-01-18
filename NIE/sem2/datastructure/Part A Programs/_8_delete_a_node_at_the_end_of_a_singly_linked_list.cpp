#include <iostream>
using namespace std;

// Define node structure
struct Node {
    int data;
    Node* next;
};

Node* head = NULL;

// Function to insert a node at the end (for setup)
void insertAtEnd(int value) {
    Node* newNode = new Node();
    newNode->data = value;
    newNode->next = NULL;

    if (head == NULL) {
        head = newNode;
        return;
    }

    Node* temp = head;
    while (temp->next != NULL) {
        temp = temp->next;
    }
    temp->next = newNode;
}

// Function to delete node at the end
void deleteAtEnd() {
    if (head == NULL) {
        cout << "Linked list is empty. Nothing to delete.\n";
        return;
    }

    if (head->next == NULL) { // Only one node
        delete head;
        head = NULL;
        cout << "Node deleted. Linked list is now empty.\n";
        return;
    }

    Node* temp = head;
    while (temp->next->next != NULL) {
        temp = temp->next;
    }

    delete temp->next;
    temp->next = NULL;
    cout << "Last node deleted successfully.\n";
}

// Function to display the linked list
void display() {
    if (head == NULL) {
        cout << "Linked list is empty.\n";
        return;
    }

    Node* temp = head;
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
        insertAtEnd(value);
    }

    cout << "Before deletion:\n";
    display();

    deleteAtEnd();

    cout << "After deletion:\n";
    display();

    return 0;
}
