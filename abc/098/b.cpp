#include <bits/stdc++.h>

using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n;
  cin >> n;
  string s;
  cin >> s;

  int ans = 0;
  for (int i = 1; i < n; i++) {
    set<char> x;
    for (int j = 0; j < i; j++) {
      x.insert(s[j]);
    }

    set<char> y;
    for (int j = i; j < n; j++) {
      y.insert(s[j]);
    }

    int count = 0;
    for (char ch : x) {
      if (y.find(ch) != y.end()) {
        count++;
      }
    }
    ans = max(ans, count);
  }

  cout << ans << "\n";

  return 0;
}