// program to implement Depth First Search (DFS)
#include <iostream>
#include <vector>

using namespace std;
vector <int> adj[100];
bool visited[100];

void dfs(int vertex){
    visited[vertex]=true;
    cout<<vertex<<" ";
    for (int i=0;i<adj[vertex].size();i++){
        int neighbor=adj[vertex][i];
        if (!visited[neighbor]){
            dfs(neighbor);
        }
    }
}

int main() {
    int n=5;
    adj[0].push_back(1);
    adj[0].push_back(2);
    adj[1].push_back(0);
    adj[1].push_back(3);
    adj[1].push_back(4);
    adj[2].push_back(0);
    adj[3].push_back(1);
    adj[4].push_back(1);
    fill(visited,visited+n,false);
    dfs(0);
    cout<<endl;
    return 0;
}