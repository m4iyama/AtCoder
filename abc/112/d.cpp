#include <bits/stdc++.h>

using lint = long long;
using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n, m;
  cin >> n >> m;

  int gcd;
  for (int i = m / n; i >= 1; i--) {
    if (m % i == 0) {
      gcd = i;
      break;
    }
  }

  cout << gcd << endl;
  return 0;
}
