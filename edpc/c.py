n = int(input())
vs = []
for _ in range(n):
    vs.append(tuple(map(int, input().split())))

dp = [[0 for _ in range(3)] for _ in range(n)]
dp[0] = [vs[0][0], vs[0][1], vs[0][2]]

for i in range(1, n):
    dp[i][0] = vs[i][0] + max(dp[i-1][1], dp[i-1][2])
    dp[i][1] = vs[i][1] + max(dp[i-1][2], dp[i-1][0])
    dp[i][2] = vs[i][2] + max(dp[i-1][0], dp[i-1][1])

print(max(dp[n-1]))
