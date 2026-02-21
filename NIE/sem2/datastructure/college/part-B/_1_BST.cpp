// Program to construct a binary search tree
#include <iostream>
using namespace std;

struct  node
{
    int data;
    node *left,*right;
    node (int new_data){
        data=new_data;
        left=NULL;
        right=NULL;
    }
};

node *insert(node *root, int key){
    if (root==NULL){
        return new node (key);
    }
    if (key<root->data){
        root->left=insert(root->left, key);
    }
    else if (key>root->data){
        root->right=insert(root->right, key);
    }
    return root;
}

void preorder(node *root){
    if (root != NULL){
        cout<<root->data<<" ";
        preorder(root->left);
        preorder(root->right);
    }
}

void inorder(node *root){
    if (root != NULL){
        inorder(root->left);
        cout<<root->data<<" ";
        inorder(root->right);
    }
}

void postorder(node *root){
    if (root != NULL){
        postorder(root->left);
        postorder(root->right);
        cout<<root->data<<" ";
    }
}

int main() {
    node *root=NULL;
    root=insert(root,50);
    root=insert(root,30);
    root=insert(root,70);
    root=insert(root,20);
    root=insert(root,40);
    root=insert(root,60);
    root=insert(root,80);
    cout<<"Pre-order traversal :";
    preorder(root);
    cout<<"\n";

    cout<<"In-order traversal :";
    inorder(root);
    cout<<"\n";

    cout<<"Post-order traversal :";
    postorder(root);
    cout<<"\n";
    return 0;
}