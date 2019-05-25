#include <bits/stdc++.h>

using lint = long long;
using namespace std;

vector<pair<int, int>> edges[100000];
int colors[100000];
void init() {
  for (int i = 0; i < 100000; i++) {
    colors[i] = -1;
  }
}
void dfs(int u, int c) {
  colors[u] = c;
  for (auto p : edges[u]) {
    int v = p.first;
    int w = p.second;

    if (colors[v] == -1) {
      if (w % 2 == 0) {
        dfs(v, c);
      } else {
        if (c == 0) {
          dfs(v, 1);
        } else {
          dfs(v, 0);
        }
      }
    }
  }
}

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n;
  cin >> n;

  for (int i = 0; i < n - 1; i++) {
    int u, v, w;
    cin >> u >> v >> w;
    edges[u - 1].push_back(make_pair(v - 1, w));
    edges[v - 1].push_back(make_pair(u - 1, w));
  }

  init();
  dfs(0, 0);

  for (int i = 0; i < n; i++) {
    cout << colors[i] << endl;
  }

  return 0;
}