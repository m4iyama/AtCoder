n = int(input())
p = map(int, input().split())

dp = [False for _ in range(10001)]
dp[0] = True

for pp in p:
    for i in range(10001, 0, -1):
        if i - pp >= 0 and dp[i-pp]:
            dp[i] = True


print(dp.count(True))
