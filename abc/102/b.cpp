#include <bits/stdc++.h>

using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n;
  cin >> n;

  int max_v, min_v;
  max_v = 1;
  min_v = 1e9;
  for (int i = 0; i < n; i++) {
    int x;
    cin >> x;
    max_v = max(max_v, x);
    min_v = min(min_v, x);
  }

  cout << max_v - min_v << endl;

  return 0;
}