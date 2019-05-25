n = int(input())
sumv = 0
for _ in range(n):
    ai, bi = map(int, input().split())
    sumv += min(ai // 2, bi)

print(sumv)
