#include <bits/stdc++.h>

using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n;
  string s;
  cin >> n;
  cin >> s;

  int w, e;
  w = 0;
  e = 0;
  for (char c : s) {
    c == 'W' ? w++ : e++;
  }

  int lw, re;
  lw = 0;
  re = e;

  int ans = n;
  for (char c : s) {
    if (c == 'E') {
      re--;
    }

    ans = min(ans, lw + re);

    if (c == 'W') {
      lw++;
    }
  }

  cout << ans << endl;

  return 0;
}