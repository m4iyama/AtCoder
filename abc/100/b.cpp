#include <bits/stdc++.h>

using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int d, n;
  cin >> d >> n;

  if (n == 100) n = 101;
  cout << (int)pow(100, d) * n << endl;

  return 0;
}