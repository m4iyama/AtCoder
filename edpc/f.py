s = input().strip()
t = input().strip()

dp = [[('', 0) for _ in range(len(t)+1)] for _ in range(len(s)+1)]

for i in range(len(s)):
    for j in range(len(t)):
        if s[i] == t[j]:
            dp[i+1][j+1] = (dp[i][j][0] + s[i], dp[i][j][1] + 1)
        else:
            dp[i+1][j+1] = dp[i][j+1] if dp[i][j +
                                               1][1] >= dp[i+1][j][1] else dp[i+1][j]

lcs = dp[len(s)][len(t)][0]
print('', end='') if lcs == '' else print(lcs)
