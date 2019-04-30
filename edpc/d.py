n, w = map(int, input().split())
ws, vs = [], []
for _ in range(n):
    ww, vv = map(int, input().split())
    ws.append(ww)
    vs.append(vv)

dp = [[0 for _ in range(w+1)] for _ in range(n)]
dp[0] = [vs[0] if j >= ws[0] else 0 for j in range(w+1)]

for i in range(1, n):
    for j in range(0, w+1):
        if j - ws[i] >= 0:
            dp[i][j] = max(dp[i-1][j], vs[i] + dp[i-1][j-ws[i]])
        else:
            dp[i][j] = dp[i-1][j]

print(dp[n-1][w])
