#include <bits/stdc++.h>

using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int a, b;
  cin >> a >> b;

  int n = b - a;
  cout << n * (n + 1) / 2 - b << endl;

  return 0;
}