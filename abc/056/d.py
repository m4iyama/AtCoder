n, k = map(int, input().split())
xs = list(map(int, input().split()))

dp1 = [[False for _ in range(k)] for _ in range(n+1)]
dp1[0][0] = True

for i in range(n):
    for j in range(k):
        x = xs[i]
        dp1[i+1][j] = dp1[i][j] or ((j - x >= 0) and dp1[i][j-x])


dp2 = [[False for _ in range(k)] for _ in range(n+1)]
dp2[n][0] = True
for i in range(n-1, -1, -1):
    for j in range(k):
        x = xs[i]
        dp2[i][j] = dp2[i+1][j] or ((j - x >= 0) and dp2[i+1][j-x])


c = 0
for i in range(n):
    x = xs[i]
    dpl = dp1[i+1]
    dpr = dp2[i]
    for i, tl in enumerate(dpl):
        tr = dpr[i]
