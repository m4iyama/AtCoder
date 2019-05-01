#include <bits/stdc++.h>

using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int x = 0;

  string s;
  cin >> s;
  for (char c : s) {
    if (c == '+') {
      x++;
    } else {
      x--;
    }
  }

  cout << x << endl;

  return 0;
}