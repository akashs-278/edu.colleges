## Program 1 :- Program to construct a binary search tree 





A Binary Search Tree (BST) is a special type of binary tree that maintains the following property:

> For any node:
>
> - All nodes in the left subtree have values less than the node’s value.
>
> - All nodes in the right subtree have values greater than the node’s value.

This property makes searching, insertion, and deletion efficient.

## Step-by-Step Explanation
#### **1.** **Start with an empty tree**

   - Initially, the BST is empty.

   - The first value becomes the root.

#### **2.** **Insert a node**

   - - Compare the value to insert with the current node:
> ```csharp
>         **1.** If smaller → move to the left subtree> > ```
.

        **2.** If larger → move to the right subtree.

   - Repeat until you find an empty spot and insert the new node there.

**Example:** Insert 50, 30, 70, 20, 40, 60, 80

**Step-by-step insertions:**

   - 50 → root

   - 30 → less than 50 → left child of 50

   - 70 → greater than 50 → right child of 50

   - 20 → less than 50, less than 30 → left child of 30

   - 40 → less than 50, greater than 30 → right child of 30

   - 60 → greater than 50, less than 70 → left child of 70

   - 80 → greater than 50, greater than 70 → right child of 70  



#### 3. **Search in BST**

- Start at the root:

    - If the value matches → found

    - If value < current node → go left

    - If value > current node → go right

- Repeat until found or reach NULL.

**Example:** Search 40

- 40 < 50 → go left

- 40 > 30 → go right → found!



#### 4. **Traversal (Common Types)**

1. Inorder (Left → Root → Right) → returns sorted order

2. Preorder (Root → Left → Right)

3. Postorder (Left → Right → Root)

Inorder of example BST: 20, 30, 40, 50, 60, 70, 80

#### 5. **Advantages of BST**

- Fast search, insertion, deletion (average O(log n))

- Keeps elements sorted

#### 6. **Disadvantages**

- Can become unbalanced → worst-case O(n) operations

- Needs balancing (like AVL or Red-Black Tree) for guaranteed performance

### A simple text-based diagram

> ```diagram
>         50
>       /    \
>     30      70
>    /  \    /  \
>  20   40  60   80
> ```
- 50 is the root.
- 30 and 70 are its left and right children.
- 20 and 40 are children of 30; 60 and 80 are children of 70.  
This clearly shows the BST property: left < parent < right.


---


## Program 2 :- Program for Binary Tree traversal. 





A binary tree traversal is a way to visit all the nodes of a binary tree in a specific order.

### **There are three main types of traversal**

**1. Inorder Traversal (Left → Root → Right)**

- Visit the left subtree first.

- Then visit the root node.

- Finally, visit the right subtree.

- Use: Produces nodes in sorted order for a BST.

**Example:**

For this tree:

> ```diagram
>         50
>       /    \
>     30      70
>    /  \    /  \
>  20   40  60   80
> ```

**Inorder:** 20, 30, 40, 50, 60, 70, 80

**2. Preorder Traversal (Root → Left → Right)**

- Visit the root node first.

- Then visit the left subtree.

- Finally, visit the right subtree.

- Use: Useful for copying a tree or creating a prefix expression.

**Example:**  
**Preorder:** 50, 30, 20, 40, 70, 60, 80

**3. Postorder Traversal (Left → Right → Root)**

- Visit the left subtree first.

- Then visit the right subtree.

- Finally, visit the root node.

- Use: Useful for deleting a tree or evaluating postfix expressions.

**Example:**  
**Postorder:** 20, 40, 30, 60, 80, 70, 50

### **Traversal Summary Table**
| Traversal	|   Order of Visit	| Example Output |
|-----------|-------------------|----------------|
| Inorder	| Left → Root → Right	| 20, 30, 40, 50, 60, 70, 80 |
| Preorder	| Root → Left → Right	| 50, 30, 20, 40, 70, 60, 80 |
| Postorder	| Left → Right → Root	| 20, 40, 30, 60, 80, 70, 50 |


---


## Program 3 :- Program to implement DFS 





### **1. What is DFS?**

DFS is a graph traversal algorithm. It starts at a source node and explores as far as possible along each branch before backtracking. Think of it like exploring a maze: you go down a path until you can’t go further, then you backtrack and try another path.

**DFS can be implemented using:**

- Recursion (implicit stack)

- Explicit stack (iterative approach)

### **2. Graph Representation**

Imagine we have a graph:
> ```
>     A
>    / \
>   B   C
>  / \   \
> D   E   F
> ```

**Nodes:** A, B, C, D, E, F

**Edges:** AB, AC, BD, BE, CF

### **3. Steps of DFS (Visual Explanation)**

We start at A. DFS works as follows:

**Step 1:** Start at A

- Visit A → mark it as visited

- Explore neighbors of A: B, C

**Stack/Recursion state:** [A] (current path)

Visited: A  
Stack: [A]

**Step 2:** Go deeper to B

- Visit B → mark it as visited

- Explore neighbors of B: D, E

**Stack/Recursion state:** [A, B]

Visited: A, B  
Stack: [A, B]

**Step 3:** Go deeper to D

- Visit D → mark it as visited

- D has no unvisited neighbors → backtrack

#### **Stack/Recursion state after backtracking:** [A, B] → [A]

- Visited: A, B, D
- Stack: [A, B] (during visit), then backtrack to [A]

**Step 4:** Visit E

- Next neighbor of B is E → visit and mark

- E has no unvisited neighbors → backtrack to B → then backtrack to A

**Visited:** A, B, D, E  
**Stack after backtracking:** [A] → []

**Step 5:** Visit C

- Back at A, next neighbor is C → visit and mark

- Explore neighbor F → visit and mark

Visited: A, B, D, E, C, F
Stack: [A, C, F] (during traversal)


- F has no neighbors → backtrack → traversal complete

### **4. Pictorial Summary**
> ```
> Start at A
>  |
>  v
> Visit B
>  | \
>  v  v
>  D  E
> (backtrack to B then A)
>  |
>  v
> Visit C
>  |
>  v
> Visit F
> ```

**Traversal Order (DFS):**
A → B → D → E → C → F

### **5. Key Points in DFS Implementation**

1. Mark nodes as visited to avoid cycles.

2. Go deep first before exploring siblings.

3. Backtrack when no unvisited neighbors remain.

4. Can be done using:

    - Recursion: Uses function call stack

    - Explicit stack: Uses a stack data structure


---


## Program 4 :- Program to implement BFS 





**1. What is BFS?**

BFS is a graph traversal algorithm that explores all neighbors of a node first before moving to the next level of nodes. Think of it like ripples in water: you visit everything level by level.

BFS is usually implemented using a queue.

**2. Graph Representation**

We will use the same graph as before:

> ```diagram
>     A
>    / \
>   B   C
>  / \   \
> D   E   F
> ```

**Nodes:** A, B, C, D, E, F

**Edges:** AB, AC, BD, BE, CF

**3. Steps of BFS (Visual Explanation)**

We start at A. BFS works as follows:

**Step 1:**  
- Start at A
- Visit A → mark it as visited
- Add neighbors of A (B, C) to the queue

**Queue state:** [B, C]

Visited: A
Queue: B, C

**Step 2:**  
- Visit B

- Remove B from the queue → visit it → mark it as visited

- Add neighbors of B (D, E) to the queue

**Queue state:** [C, D, E]

Visited: A, B
Queue: C, D, E

**Step 3:** 
- Visit C

- Remove C from the queue → visit → mark as visited

- Add neighbors of C (F) to the queue

**Queue state:** [D, E, F]

Visited: A, B, C
Queue: D, E, F

**Step 4:**
- Visit D

- Remove D from the queue → visit → mark as visited

- D has no unvisited neighbors → queue remains [E, F]

Visited: A, B, C, D
Queue: E, F

**Step 5:**
- Visit E

- Remove E from the queue → visit → mark as visited

- E has no unvisited neighbors → queue [F]

Visited: A, B, C, D, E
Queue: F

**Step 6:**
- Visit F

- Remove F → visit → mark as visited

- F has no neighbors → queue empty → traversal complete

Visited: A, B, C, D, E, F
Queue: empty

**4. Pictorial Summary**
> ```diagram
> Level 0:        A
>                / \
> Level 1:      B   C
>              / \    \
> Level 2:    D   E    F
> ```

- BFS visits level by level, left to right.

- **Traversal Order (BFS):**  
A → B → C → D → E → F

**5. Key Points of BFS**

1. Uses a queue to keep track of nodes to visit next.

2. Visits all neighbors of a node before moving deeper.

3. Good for:

    - Finding shortest path in unweighted graphs

    - Level-order traversal in trees


---


## Program 5 :- Program to Sort an Array (Selection Sort) 





### **1. What is Selection Sort?**

Selection Sort is a simple comparison-based sorting algorithm.

**Idea:**

- Repeatedly find the smallest (or largest) element from the unsorted part of the array and swap it with the first unsorted element.

- Keep doing this until the array is sorted.

It works in O(n²) time, because for each element, we might have to scan the rest of the array.

### **2. Example Array**

Suppose we have this array (unsorted):

> ```csharp
> [29, 10, 14, 37, 13]- 
> ```

**Goal:** sort it in ascending order.

### **3. Step-by-Step Process (Pictorial)**  


**Step 1 :** Find the smallest element in the array

- Array: [29, 10, 14, 37, 13]

- Smallest element = 10

- Swap 10 with the first element (29)

> ```less- 
> Before Swap: [29, 10, 14, 37, 13]
> Swap 29 & 10
> After Swap:  [10, 29, 14, 37, 13]
> ```

**Step 2 :** Move to the second position

- Array: [10, 29, 14, 37, 13]

- Find the smallest element in the unsorted part [29, 14, 37, 13] → 13

- Swap 13 with 29

>```less
>Before Swap: [10, 29, 14, 37, 13]
>Swap 29 & 13
>After Swap:  [10, 13, 14, 37, 29]
> ```

**Step 3 :** Move to the third position

- Array: [10, 13, 14, 37, 29]

- Smallest element in [14, 37, 29] → 14

- Swap 14 with 14 (no change)

> ```javascript
> Array remains: [10, 13, 14, 37, 29]
> ```

**Step 4 :** Move to the fourth position

- Array: [10, 13, 14, 37, 29]

- Smallest element in [37, 29] → 29

- Swap 29 with 37

> ```less
>Before Swap: [10, 13, 14, 37, 29]
>Swap 37 & 29
>After Swap:  [10, 13, 14, 29, 37]
> ```


**Step 5 :** Last element

- Only one element left → no need to swap
> ```sql
> Final Sorted Array: [10, 13, 14, 29, 37]
> ```

### **4. Visual Summary**  
Initial:     [29, 10, 14, 37, 13]  
Step 1:      [10, 29, 14, 37, 13]  
Step 2:      [10, 13, 14, 37, 29]  
Step 3:      [10, 13, 14, 37, 29]  
Step 4:      [10, 13, 14, 29, 37]  
Step 5:      [10, 13, 14, 29, 37]  

### **5. Key Points**

- Selection Sort always swaps the minimum element with the first unsorted element.

- Number of swaps is at most `n-1`.

- Time Complexity: O(n²)

- Space Complexity: O(1) (in-place sorting)


---


## Program 6 :- Program to Sort an Array (Bubble Sort) 


### **1. What is Bubble Sort?**

Bubble Sort is a simple comparison-based sorting algorithm.

Idea:

Repeatedly compare adjacent elements and swap them if they are in the wrong order.

Larger elements “bubble up” to the end of the array in each pass.

Keep repeating passes until the array is sorted.

It is called “bubble” because big numbers rise to the top like bubbles in water.

### **2. Example Array**

Suppose we have this array:

[5, 3, 8, 4, 2]


Goal: sort in ascending order.

### **3. Step-by-Step Process (Pictorial)**

**Pass 1: - Compare and swap adjacent elements**  
> ```vbnet> ```csharp
> > Initial:  [5, 3, 8, 4, 2]
> > - Compare 5 & 3 → swap → [3, 5, 8, 4, 2]    
> ```
> - > ```csharpC> ompare 5 & 8 → no swap → [3, 5, 8, 4, 2]
> - > ```csharpC> > ompare 8 & 4 → swap → [3, 5, 4, 8, 2]
> - > ```csharpC> ```
> > ompare 8 & 2 → swap → [3, 5, 4, 2, 8]
> ``> ```csharp`> ```
> >> > ```


✅ Largest element (8) is now at the end.

**Pass 2: Next pass for the first 4 elements**  
> ```vbnet
> Array: [3, 5, 4, 2, 8]
> - Compare 3 & 5 → no swap → [3, 5, 4, 2, 8]
> - > ```csharpC> ompare 5 & 4 → swap → [3, 4, 5, 2, 8]
> - > ```csharpC> > ompare 5 & 2 → swap → [3, 4, 2, 5, 8]
> ``> ```csharp`> ```
> >> > ```


✅ Second largest element (5) moves to its correct position.

**Pass 3: Next pass for the first 3 elements**
> ```vbnet
> Array: [3, 4, 2, 5, 8]
> - Compare 3 & 4 → no swap → [3, 4, 2, 5, 8]
> - > ```csharpC> ompare 4 & 2 → swap → [3, 2, 4, 5, 8]
> ``> ```csharp`> >> > ```


✅ Third largest element (4) is in the correct position.

**Pass 4: Next pass for first 2 elements**  
> ```vbnet
> Array: [3, 2, 4, 5, 8]
> - Compare 3 & 2 → swap → [2, 3, 4, 5, 8]
> ``> ```csharp`>> > ```


✅ Now the array is fully sorted.

### **4. Visual Summary**
> ```less
> Pass 1: [3, 5, 4, 2, 8]  
> Pass 2: [3, 4, 2, 5, 8]  
> Pass 3: [3, 2, 4, 5, 8]  
> Pass 4: [2, 3, 4, 5, 8]  
> Sorted: [2, 3, 4, 5, 8]  - 
> ```

### **5. Key Points of Bubble Sort**

- Compares adjacent elements and swaps if needed.

- Largest elements “bubble” to the end in each pass.

- Time Complexity: O(n²) (worst and average)

- Space Complexity: O(1) (in-place sorting)

- Can stop early if no swaps occur in a pass (optimized version).












## Program 7 :- Program to perform Linear Search of an Element in an Array. 


### **1. What is Linear Sear**ch?

Linear Search is the simplest search algorithm.

**Idea:**

- Start at the first element of the array.

- Compare each element one by one with the target element.

- If a match is found → return the index of the element 



- If you reach the end without a match → the element is not in the array.

It works for unsorted or sorted arrays.

### **2. Example Array**

Suppose we have this array:
> ```csharp
> [7, 2, 9, 4, 5]
> ```

- Target element to search: 4

### **3. Step-by-Step Process (Pictorial**)
**Step 1:** Check first element

- Compare 7 with 4 → not equal → move to next
> ```csharp
> [7, 2, 9, 4, 5]
>  ^  
> Comparing 7 → no match
> ```

**Step 2:** Check second element

- Compare 2 with 4 → not equal → move to next
> ```csharp
> [7, 2, 9, 4, 5]
>     ^  
> Comparing 2 → no match
> ```

**Step 3:** Check third element

- Compare 9 with 4 → not equal → move to next
> ```csharp
> [7, 2, 9, 4, 5]
>        ^  
> Comparing 9 → no match
> ```

Step 4: Check fourth element

- Compare 4 with 4 → match found!
> ```csharp
> [7, 2, 9, 4, 5]
>           ^  
> Comparing 4 → match found at index 3
> ```


✅ Linear Search stops here.

### ***4. Visual Summary***

> ```
> Array: [7, 2, 9, 4, 5]
> Target: 4
> Step 1 → 7 ❌
> Step 2 → 2 ❌
> Step 3 → 9 ❌
> Step 4 → 4 ✅ → Found at index 3
> ```

### **5. Key Points**

1. Simple and intuitive search algorithm.

2. Works on unsorted arrays.

3. Time Complexity:

    - **Best case**: O(1) → element found at first position

    - **Worst case**: O(n) → element at last position or not present

4. Space Complexity: O(1) → no extra memory needed


---


## Program 8 :- Program to perform Binary Search of an Element in an Array.




### **1. What is Binary Search?**

Binary Search is an **efficient search algorithm** used on **sorted arrays**.

**Idea:**

- Compare the target element with the middle element of the array.

- If the target equals the middle → found.

- If the target is smaller than middle → search the left half.

- If the target is larger than middle → search the right half.

- Repeat this process until the element is found or the subarray is empty.

Binary Search works in O(log n) time, which is much faster than Linear Search for large arrays.

### **2. Example Array**

Sorted array:
> ```csharp
> [2, 4, 7, 10, 13, 16, 20]
> ```

- Target element: 10

### **3. Step-by-Step Process (Pictorial)**
**Step 1: Find middle element**

- Array: [2, 4, 7, 10, 13, 16, 20]

- Middle index = (0+6)/2 = 3 → middle element = 10

> ```csharp
> [2, 4, 7, 10, 13, 16, 20]
>           ^
> Compare 10 → match found!
> ```

✅ Target found at index 3

**Step 2 (if target was smaller)**

- Suppose target = 7

- Middle = 10 → 7 < 10 → search left half [2, 4, 7]

> ```sql
> [2, 4, 7]
>       ^
> Middle = 4 → 7 > 4 → search right half [7]
> ```

- Only element left is 7 → found at index 2

**Step 3 (if target was larger)**

- Suppose target = 16

- Middle = 10 → 16 > 10 → search right half [13, 16, 20]

> ```pgsql
> [13, 16, 20]
>       ^
> Middle = 16 → target found at index 5
> ```
### **4. Visual Summary (Steps)**
> ```vbnet
> Array: [2, 4, 7, 10, 13, 16, 20]
> Target: 10
> 
> Step 1: Middle = 10 → Found! ✅
> ```

If not found:
> ```scss
> Compare → decide left or right half
> Repeat until element found or subarray empty
> ```
### **5. Key Points**

1. Works only on sorted arrays.

2. Divide-and-conquer approach → halves the search space each step.

3. Time Complexity: O(log n)

4. Space Complexity: O(1) for iterative, O(log n) for recursive.

5. Much faster than Linear Search for large datasets.

