#include <bits/stdc++.h>

using lint = long long;
using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  string s, t;
  cin >> s;
  cin >> t;

  bool can = false;
  for (lint i = 0; i < s.size(); i++) {
    string ss;
    ss = s.substr(s.size() - i, i) + s.substr(0, s.size() - i);
    if (ss == t) {
      can = true;
    }
  }

  if (can) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }

  return 0;
}