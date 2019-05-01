#include <bits/stdc++.h>

using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n, k;
  cin >> n >> k;
  for (int i = 0; i < n; i++) {
    int x;
    cin >> x;
  }

  if (k >= n) {
    cout << 1 << endl;
  } else {
    cout << 1 + ceil((double)(n - k) / (k - 1)) << endl;
  }

  return 0;
}