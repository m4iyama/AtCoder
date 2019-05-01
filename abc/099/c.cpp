#include <bits/stdc++.h>

using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n;
  cin >> n;

  vector<int> units;
  units.push_back(1);
  int u = 6;
  while (u <= n) {
    units.push_back(u);
    u *= 6;
  }
  u = 9;
  while (u <= n) {
    units.push_back(u);
    u *= 9;
  }
  sort(units.begin(), units.end());

  int dp[n + 1];
  for (int i = 1; i <= n; i++) dp[i] = 1000000;
  dp[0] = 0;
  for (int i = 1; i <= n; i++) {
    for (int u : units) {
      if (u > i) break;
      dp[i] = min(dp[i], dp[i - u] + 1);
    }
  }

  cout << dp[n] << endl;

  return 0;
}