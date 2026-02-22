#include <bits/stdc++.h>
using namespace std;
#include <string.h>
vector<int> g[10];
int visited[10] = {0};
void bfs(queue<int> q);
int main()
{
    int n;
    cin >> n;
    while (n--)
    {
        int x, y;
        cin >> x >> y;
        g[x].push_back(y);
    }
    queue<int> q;
    for (int i = 0; i < 7; i++)
    {
        if (!visited[i])
        {
            q.push(i);
            visited[i] = 1;
            bfs(q);
        }
    }
    cout<<endl;
}

void bfs(queue<int> q)
{
    while (q.size())
    {
        int p = q.front();
        q.pop();
        cout << p << " ";
        for (int i = 0; i < g[p].size(); i++)
        {
            if (!visited[g[p][i]])
            {
                q.push(g[p][i]);
                visited[g[p][i]] = 1;
            }
        }
    }
}