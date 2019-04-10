RATIO = 380000

sum = 0
N = int(input())
for i in range(N):
    x, u = input().split()
    x = float(x)
    if u == 'BTC':
        sum += x * RATIO
    else:
        sum += x

print(sum)