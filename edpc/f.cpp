#include <bits/stdc++.h>

using lint = long long;
using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  string s, t;
  cin >> s;
  cin >> t;

  lint dp[s.size() + 1][t.size() + 1];
  for (int i = 0; i < s.size() + 1; i++) {
    dp[i][0] = 0;
  }
  for (int i = 0; i < t.size() + 1; i++) {
    dp[0][i] = 0;
  }

  for (int i = 0; i < s.size(); i++) {
    for (int j = 0; j < t.size(); j++) {
      if (s[i] == t[j]) {
        dp[i + 1][j + 1] = dp[i][j] + 1;
      } else {
        dp[i + 1][j + 1] = max(dp[i][j + 1], dp[i + 1][j]);
      }
    }
  }

  int i = (int)s.size();
  int j = (int)t.size();
  string ans = "";
  while (i > 0 && j > 0) {
    if (dp[i][j] == dp[i - 1][j]) {
      i--;
    } else if (dp[i][j] == dp[i][j - 1]) {
      j--;
    } else {
      ans = s[i - 1] + ans;
      i--, j--;
    }
  }

  if (ans.size() > 0) {
    cout << ans << endl;
  }

  return 0;
}