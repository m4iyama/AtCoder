#include <bits/stdc++.h>

using namespace std;
int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n;
  cin >> n;
  int a[n];
  for (int i = 0; i < n; i++) {
    cin >> a[i];
  }

  int count = 0;
  for (int ai : a) {
    while (ai % 2 == 0) {
      ai /= 2;
      count++;
    }
  }

  cout << count << endl;

  return 0;
}