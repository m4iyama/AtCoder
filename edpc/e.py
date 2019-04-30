inf = 2000000000

n, w = map(int, input().split())
ws, vs = [], []
for _ in range(n):
    ww, vv = map(int, input().split())
    ws.append(ww)
    vs.append(vv)

sum_v = sum(vs)
dp = [[inf for _ in range(sum_v+1)] for _ in range(n)]
# dp[i][j]: i番目までで価値jを達成する最小の重さ

dp[0][0] = 0
dp[0][vs[0]] = ws[0]

for i in range(1, n):
    for j in range(0, sum_v+1):
        if j - vs[i] >= 0:
            dp[i][j] = min(dp[i-1][j], ws[i] + dp[i-1][j-vs[i]])
        else:
            dp[i][j] = dp[i-1][j]

max_v = 0
for j in range(0, sum_v+1):
    if dp[n-1][j] <= w:
        max_v = j

print(max_v)
