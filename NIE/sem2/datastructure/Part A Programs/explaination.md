

## Program 1 :- Program to find GCD of two numbers.
Explanation :-  
**GCD** stands for Greatest Common Divisor.It means the largest positive number that divides two or more numbers without leaving a remainder.

Example:  
**Numbers** : 12 and 18  
**Divisors of 12** : 1, 2, 3, 4, 6, 12  
**Divisors of 18** : 1, 2, 3, 6, 9, 18  
**Common divisors** : 1, 2, 3, 6  
    ➡️ Greatest common divisor = 6  
So, GCD(12, 18) = 6.

> cpp
> ---
>> ```
>>#include <iostream>
>>using namespace std;
>>
>>int main() {
>>    int a, b;
>>
>>    cout << "Enter two numbers: ";
>>    cin >> a >> b;
>>
>>    while (b != 0) {
>>        int remainder = a % b;
>>        a = b;
>>        b = remainder;
>>    }
>>
>>    cout << "GCD is: " << a << endl;
>>
>>    return 0;
>>}
>>```


---


## Program 2 :- Program to implement Tower of Hanoi.


Explanation :-
### What is the Tower of Hanoi?   
The Tower of Hanoi is a classic puzzle that helps you understand recursion, logic, and problem-solving.

### It consists of:
- 3 rods (or pegs)

     - Source (A)
     - Auxiliary/Helper (B)
     - Destination (C)

- N number of disks of different sizes, all starting on the source rod

The goal is to move all the disks from the source rod to the destination rod.

---

### Rules of the Tower of Hanoi

You must follow all of these rules:  
- Only one disk can be moved at a time  
- Only the top disk of any rod can be moved  
- A larger disk cannot be placed on top of a smaller disk 

If any rule is broken, the move is invalid.

---

### How to Number the Disks

Disks are numbered based on their size:
- Smallest disk → Disk 1
- Next larger → Disk 2
- Next larger → Disk 3…
- Largest disk → Disk N

> 
> #### Example (3 disks):
> ---
> From top to bottom on the source rod:
>
>> Disk 1 (smallest)  
>> Disk 2  
>> Disk 3 (largest)
>

---

### Basic Idea of the Solution

To move N disks from rod A to rod C:
- Move N−1 disks from A to B (using C as helper)
- Move the Nth (largest) disk from A to C
- Move N−1 disks from B to C (using A as helper)

This pattern repeats recursively.

---

### Minimum Number of Moves

The minimum number of moves required is:

<p align="center">2^𝑁−1</p>
  
**Examples :**  
- 1 disk → 1 move
- 2 disks → 3 moves
- 3 disks → 7 moves
- 4 disks → 15 moves

---

> cpp
> ```
> #include <iostream>
> using namespace std;
> 
> void towerOfHanoi(int n, char source, char auxiliary, char destination) {
>     if (n == 1) {
>         cout << "Move disk 1 from " << source << " to " << destination << endl;
>         return;
>     }
> 
>     towerOfHanoi(n - 1, source, destination, auxiliary);
>     cout << "Move disk " << n << " from " << source << " to " << destination << endl;
>     towerOfHanoi(n - 1, auxiliary, source, destination);
> }
> 
> int main() {
>     int n;
>     cout << "Enter number of disks: ";
>     cin >> n;
> 
>     towerOfHanoi(n, 'A', 'B', 'C');
> 
>     return 0;
> }
> ```


---


## Program 3 :- Program to print Fibonacci series.


Explanation :-

**Fibonacci Series**  
The Fibonacci series is a sequence of numbers where each number is the sum of the previous two numbers.

### Rule of the Fibonacci Series

The first two numbers are:

- F₀ = 0

- F₁ = 1

Every next number is calculated as:
<p align="center"> Fn ​= Fn−1 ​+ Fn−2​ </p>


**Example :-**

If you want the first 7 terms, the Fibonacci series is:
0, 1, 1, 2, 3, 5, 8.  
Let’s build the Fibonacci series step by step:  
0, 1, 1, 2, 3, 5, 8, 13, 21, …

How it works:  
0 and 1 → starting numbers  
- 0 + 1 = 1  
- 1 + 1 = 2  
- 1 + 2 = 3  
- 2 + 3 = 5  
- 3 + 5 = 8  



- #### C++ Program (Using Loop)
    > cpp
    > ---
    > ```
    > #include <iostream>
    > using namespace std;
    > 
    > int main() {
    >     int n;
    >     cout << "Enter number of terms: ";
    >     cin >> n;
    > 
    >     int a = 0, b = 1;
    > 
    >     cout << "Fibonacci Series: ";
    > 
    >     for (int i = 1; i <= n; i++) {
    >         cout << a << " ";
    >         int next = a + b;
    >         a = b;
    >         b = next;
    >     }
    > 
    >     return 0;
    > }
    > ```

- #### C++ Program (Using Recursion)
    > cpp
    > ---
    > ```
    > #include <iostream>
    > using namespace std;
    > 
    > int fibonacci(int n) {
    >     if (n == 0)
    >         return 0;
    >     if (n == 1)
    >         return 1;
    > 
    >     return fibonacci(n - 1) + fibonacci(n - 2);
    > }
    > 
    > int main() {
    >     int n;
    >     cout << "Enter number of terms: ";
    >     cin >> n;
    > 
    >     cout << "Fibonacci Series: ";
    >     for (int i = 0; i < n; i++) {
    >         cout << fibonacci(i) << " ";
    >     }
    > 
    >     return 0;
    > }
    > ```

    
---



## Program 4 :- Program to find largest and smallest element in an array

To find the largest and smallest element in an array, we compare each element with the current largest and smallest values.

**Steps :**
- Assume the first element is both the largest and smallest.
- Traverse the array from the second element.
- If an element is greater than the largest, update the largest.
- If an element is smaller than the smallest, update the smallest.

**Example:**

Array: [5, 2, 9, 1, 7]

Start:  
- Largest = 5, Smallest = 5
- Compare 2 → Smallest = 2
- Compare 9 → Largest = 9
- Compare 1 → Smallest = 1
- Compare 7 → No change

**Result:**
- Largest element = 9
- Smallest element = 1

> cpp
> ---
> ```
> #include <iostream>
> using namespace std;
> 
> int main() {
>     int n;
>     cout << "Enter number of elements: ";
>     cin >> n;
> 
>     int arr[n];
>     cout << "Enter array elements:\n";
>     for (int i = 0; i < n; i++) {
>         cin >> arr[i];
>     }
> 
>     int largest = arr[0];
>     int smallest = arr[0];
> 
>     for (int i = 1; i < n; i++) {
>         if (arr[i] > largest)
>             largest = arr[i];
>         if (arr[i] < smallest)
>             smallest = arr[i];
>     }
> 
>     cout << "Largest element = " << largest << endl;
>     cout << "Smallest element = " << smallest << endl;
> 
>     return 0;
> }
> ```

**Alternate Method (Using Functions)**

> cpp
> ---
> ```
> #include <iostream>
> using namespace std;
> 
> int findLargest(int arr[], int n) {
>     int max = arr[0];
>     for (int i = 1; i < n; i++)
>         if (arr[i] > max)
>             max = arr[i];
>     return max;
> }
> 
> int findSmallest(int arr[], int n) {
>     int min = arr[0];
>     for (int i = 1; i < n; i++)
>         if (arr[i] < min)
>             min = arr[i];
>     return min;
> }
> 
> int main() {
>     int arr[] = {4, 7, 1, 9, 2};
>     int n = 5;
> 
>     cout << "Largest = " << findLargest(arr, n) << endl;
>     cout << "Smallest = " << findSmallest(arr, n) << endl;
> 
>     return 0;
> }
> ```


---


## Program 5 :- Program to perform stack operations

What is Stack ?  
A stack is a linear data structure that follows the LIFO principle (Last In, First Out).

**Main Stack Operations**

> - **`Push`**

Adds an element to the top of the stack.

**Example:**  
Stack before: [10, 20]  
Push 30 → Stack becomes: [10, 20, 30]

> - **`Pop`**

Removes the top element from the stack.

**Example:**  
Stack before: [10, 20, 30]  
Pop → Stack becomes: [10, 20]

> - **`Peek / Top`**

Returns the top element without removing it.

**Example:**
Stack: [10, 20]  
Peek → 20

> - **`isEmpty`**

Checks whether the stack is empty.
Returns true if no elements are present.

> - **`isFull (for array-based stack)`**

Checks whether the stack is full.Prevents stack overflow.

**Example:**  
Stack (Top at Right)  
Bottom → [5, 10, 15] ← Top

**Applications of Stack**
- Function calls
- Expression evaluation
- Undo/Redo operations
- Reversing data


> cpp
> ---
> ```
> #include <iostream>
> using namespace std;
> 
> #define MAX 5   // Maximum size of stack
> 
> int stack[MAX];
> int top = -1;
> 
> // Push operation
> void push() {
>     int value;
>     if (top == MAX - 1) {
>         cout << "Stack Overflow! Cannot push.\n";
>     } else {
>         cout << "Enter value to push: ";
>         cin >> value;
>         top++;
>         stack[top] = value;
>         cout << "Value pushed successfully.\n";
>     }
> }
> 
> // Pop operation
> void pop() {
>     if (top == -1) {
>         cout << "Stack Underflow! Cannot pop.\n";
>     } else {
>         cout << "Popped value: " << stack[top] << endl;
>         top--;
>     }
> }
> 
> // Display operation
> void display() {
>     if (top == -1) {
>         cout << "Stack is empty.\n";
>     } else {
>         cout << "Stack elements are:\n";
>         for (int i = top; i >= 0; i--) {
>             cout << stack[i] << " ";
>         }
>         cout << endl;
>     }
> }
> 
> int main() {
>     int choice;
> 
>     do {
>         cout << "\n--- Stack Operations Menu ---\n";
>         cout << "1. Push\n";
>         cout << "2. Pop\n";
>         cout << "3. Display\n";
>         cout << "4. Exit\n";
>         cout << "Enter your choice: ";
>         cin >> choice;
> 
>         switch (choice) {
>             case 1: push(); break;
>             case 2: pop(); break;
>             case 3: display(); break;
>             case 4: cout << "Exiting program.\n"; break;
>             default: cout << "Invalid choice!\n";
>         }
>     } while (choice != 4);
> 
>     return 0;
> }
> ```


---


## Program 6 :- Program to perform Linear queue operations


What is Linear queue ?  
A linear queue is a linear data structure that follows the FIFO principle
(First In, First Out).

**Main Linear Queue Operations**

**`Enqueue`**  
Inserts an element at the rear (end) of the queue.

**Example:**  
Queue before: [10, 20]  
Enqueue 30 → Queue becomes: [10, 20, 30]

**`Dequeue`**  
Removes an element from the front (beginning) of the queue.

**Example:**  
Queue before: [10, 20, 30]  
Dequeue → Queue becomes: [20, 30]

**`Front / Peek`**  
Displays the front element without removing it.

**Example:**  
Queue: [20, 30]  
Front → 20

**`isEmpty`**  
Checks whether the queue is empty.

**Condition:** front == -1 or front > rear

**`isFull (array-based linear queue)`**  
Checks whether the queue is full.

**Condition:** rear == size - 1

### Example of Linear Queue :-  
Front → [5, 10, 15] ← Rear

### Limitation of Linear Queue :-
- Wastage of memory after dequeue operations
- Overcome by using a circular queue
- Applications
- CPU scheduling
- Printer queue
- Ticket booking systems

> cpp
> ```
> #include <iostream>
> using namespace std;
> 
> #define MAX 5   // Maximum size of queue
> 
> int queue[MAX];
> int front = -1, rear = -1;
> 
> // Enqueue operation
> void enqueue() {
>     int value;
>     if (rear == MAX - 1) {
>         cout << "Queue Overflow! Cannot insert.\n";
>     } else {
>         if (front == -1)
>             front = 0;
>         cout << "Enter value to insert: ";
>         cin >> value;
>         rear++;
>         queue[rear] = value;
>         cout << "Value inserted successfully.\n";
>     }
> }
> 
> // Dequeue operation
> void dequeue() {
>     if (front == -1 || front > rear) {
>         cout << "Queue Underflow! Cannot delete.\n";
>     } else {
>         cout << "Deleted value: " << queue[front] << endl;
>         front++;
>     }
> }
> 
> // Display operation
> void display() {
>     if (front == -1 || front > rear) {
>         cout << "Queue is empty.\n";
>     } else {
>         cout << "Queue elements are:\n";
>         for (int i = front; i <= rear; i++) {
>             cout << queue[i] << " ";
>         }
>         cout << endl;
>     }
> }
> 
> int main() {
>     int choice;
> 
>     do {
>         cout << "\n--- Linear Queue Menu ---\n";
>         cout << "1. Enqueue\n";
>         cout << "2. Dequeue\n";
>         cout << "3. Display\n";
>         cout << "4. Exit\n";
>         cout << "Enter your choice: ";
>         cin >> choice;
> 
>         switch (choice) {
>             case 1: enqueue(); break;
>             case 2: dequeue(); break;
>             case 3: display(); break;
>             case 4: cout << "Exiting program.\n"; break;
>             default: cout << "Invalid choice!\n";
>         }
>     } while (choice != 4);
> 
>     return 0;
> }
> ```


---


## Program 7 :- Program to insert a node at the beginning of a singly linked list

**What is linked list ?**  
A linked list is a type of data structure used in computer science to store a collection of elements, called nodes, in a sequence. Unlike arrays, the elements in a linked list are not stored in contiguous memory locations; instead, each node contains two main things:
- Data – the actual value or information you want to store.
- Pointer (or reference) – a link to the next node in the sequence.

This structure allows for flexible memory usage and makes certain operations, like inserting or deleting elements in the middle of the list, more efficient than in arrays.




**What is Singly linked list ?**  
A singly linked list is a linear data structure where elements, called nodes, are connected in a sequence, and each node contains:
- Data – stores the actual value.
- Next – a pointer/reference to the next node in the list.  
The first node is called the head, and the last node points to NULL (indicating the end of the list).

**Features:**
- Dynamic size (can grow or shrink at runtime).
- Efficient insertion/deletion at the beginning.
- Traversal is only in one direction.


**Structure of a Node:**  
> ```stucture
> [Data | Next]
> ```
**Example of a Singly Linked List:**  
<center>
Head → 10 → 20 → 30 → NULL.  

`10` is the first node Head.  
`30` is the last node pointing to NULL.
</center>

**Advantages:**
- Dynamic memory allocation.
- Easy insertion/deletion at the beginning.

**Disadvantages:**
- Traversal is only forward (no backward movement).
- Accessing a specific element takes O(n) time.


> cpp
> ---
> ```
> #include <iostream>
> using namespace std;
> 
> // Define node structure
> struct Node {
>     int data;
>     Node* next;
> };
> 
> Node* head = NULL;
> 
> // Insert at beginning
> void insertAtBeginning(int value) {
>     Node* newNode = new Node();
>     newNode->data = value;
>     newNode->next = head;
>     head = newNode;
> }
> 
> // Display linked list
> void display() {
>     Node* temp = head;
>     if (temp == NULL) {
>         cout << "Linked list is empty.\n";
>         return;
>     }
>     cout << "Linked list elements: ";
>     while (temp != NULL) {
>         cout << temp->data << " -> ";
>         temp = temp->next;
>     }
>     cout << "NULL\n";
> }
> 
> int main() {
>     int n, value;
> 
>     cout << "Enter number of nodes to insert: ";
>     cin >> n;
> 
>     for (int i = 0; i < n; i++) {
>         cout << "Enter value: ";
>         cin >> value;
>         insertAtBeginning(value);
>     }
> 
>     display();
> 
>     return 0;
> }
> ```


---


## Program 8 :- Program to delete a node at the end of a singly linked list.
> cpp
> ---
> ```
> #include <iostream>
> using namespace std;
> 
> // Define node structure
> struct Node {
>     int data;
>     Node* next;
> };
> 
> Node* head = NULL;
> 
> // Function to insert a node at the end (for setup)
> void insertAtEnd(int value) {
>     Node* newNode = new Node();
>     newNode->data = value;
>     newNode->next = NULL;
> 
>     if (head == NULL) {
>         head = newNode;
>         return;
>     }
> 
>     Node* temp = head;
>     while (temp->next != NULL) {
>         temp = temp->next;
>     }
>     temp->next = newNode;
> }
> 
> // Function to delete node at the end
> void deleteAtEnd() {
>     if (head == NULL) {
>         cout << "Linked list is empty. Nothing to delete.\n";
>         return;
>     }
> 
>     if (head->next == NULL) { // Only one node
>         delete head;
>         head = NULL;
>         cout << "Node deleted. Linked list is now empty.\n";
>         return;
>     }
> 
>     Node* temp = head;
>     while (temp->next->next != NULL) {
>         temp = temp->next;
>     }
> 
>     delete temp->next;
>     temp->next = NULL;
>     cout << "Last node deleted successfully.\n";
> }
> 
> // Function to display the linked list
> void display() {
>     if (head == NULL) {
>         cout << "Linked list is empty.\n";
>         return;
>     }
> 
>     Node* temp = head;
>     cout << "Linked list elements: ";
>     while (temp != NULL) {
>         cout << temp->data << " -> ";
>         temp = temp->next;
>     }
>     cout << "NULL\n";
> }
> 
> int main() {
>     int n, value;
> 
>     cout << "Enter number of nodes to insert: ";
>     cin >> n;
> 
>     for (int i = 0; i < n; i++) {
>         cout << "Enter value: ";
>         cin >> value;
>         insertAtEnd(value);
>     }
> 
>     cout << "Before deletion:\n";
>     display();
> 
>     deleteAtEnd();
> 
>     cout << "After deletion:\n";
>     display();
> 
>     return 0;
> }
> ```