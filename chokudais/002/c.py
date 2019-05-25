n = int(input())
maxs = 0
for _ in range(n):
    ai, bi = map(int, input().split())
    maxs = max(maxs, ai + bi)

print(maxs)
