#include <bits/stdc++.h>

using lint = long long;
using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  lint n;
  cin >> n;

  int sum = 0;
  for (lint i = 0; i < n; i++) {
    int x;
    cin >> x;

    sum += x - 1;
  }

  cout << sum << endl;

  return 0;
}