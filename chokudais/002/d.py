n = int(input())
sumv = 0
for _ in range(n):
    ai, bi = map(int, input().split())
    sumv += max(ai, bi)

print(sumv)
