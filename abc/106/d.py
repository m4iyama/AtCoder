n, m, q = map(int, input().split())

lr = [[0 for _ in range(n)] for _ in range(n)]
for _ in range(m):
    l, r = map(lambda x: int(x) - 1, input().split())
    lr[l][r] += 1

for i in range(n):
    for j in range(1, n):
        lr[i][j] += lr[i][j-1]

for i in range(1, n):
    for j in range(n):
        lr[i][j] += lr[i-1][j]

for _ in range(q):
    p, q = map(lambda x: int(x) - 1, input().split())
    if p == 0:
        print(lr[q][q])
    else:
        print(lr[q][q]-lr[p-1][q]-lr[q][p-1]+lr[p-1][p-1])

