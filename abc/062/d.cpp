#include <bits/stdc++.h>

using lint = long long;
using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  lint n;
  cin >> n;
  lint a[3 * n];
  for (lint i = 0; i < 3 * n; i++) {
    cin >> a[i];
  }

  lint formar_sums[n + 1];
  priority_queue<lint, vector<lint>, greater<lint>> formar;

  formar_sums[0] = 0;
  for (lint i = 0; i < n; i++) {
    formar.push(a[i]);
    formar_sums[0] += a[i];
  }
  for (lint d = 1; d <= n; d++) {
    formar_sums[d] = formar_sums[d - 1];

    formar_sums[d] += a[n + d - 1];
    formar.push(a[n + d - 1]);
    formar_sums[d] -= formar.top();
    formar.pop();
  }

  lint latter_sums[n + 1];
  priority_queue<lint> latter;

  latter_sums[n] = 0;
  for (lint i = 2 * n; i < 3 * n; i++) {
    latter.push(a[i]);
    latter_sums[n] += a[i];
  }
  for (lint d = n - 1; d >= 0; d--) {
    latter_sums[d] = latter_sums[d + 1];

    latter_sums[d] += a[n + d];
    latter.push(a[n + d]);
    latter_sums[d] -= latter.top();
    latter.pop();
  }

  lint ans = formar_sums[0] - latter_sums[0];
  for (lint d = 1; d <= n; d++) {
    ans = max(ans, formar_sums[d] - latter_sums[d]);
  }

  cout << ans << endl;

  return 0;
}