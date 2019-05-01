#include <bits/stdc++.h>

using lint = long long;
using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  lint n, b;
  cin >> n;

  vector<lint> a(n);
  for (lint i = 0; i < n; i++) {
    cin >> a[i];
    a[i] -= i;
  }

  sort(a.begin(), a.end());
  if (n % 2 == 0)
    b = a[n / 2];
  else
    b = a[(n - 1) / 2];

  lint ans = 0;
  for (int x : a) {
    ans += abs(x - b);
  }

  cout << ans << endl;

  return 0;
}
