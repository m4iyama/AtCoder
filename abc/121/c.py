n, m = map(int, input().split())
ds = []
for _ in range(n):
    a, b = map(int, input().split())
    ds.append((a, b))

ds.sort(key=lambda d: d[0])

cost = 0
for d in ds:
    if d[1] >= m:
        cost += m * d[0]
        break

    cost += d[0] * d[1]
    m -= d[1]

print(cost)
