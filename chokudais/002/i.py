import math

n = int(input())
ms = []
for _ in range(n):
    ai, bi = map(int, input().split())
    ms.append((ai, bi))


maxp, maxi = 0, 0
for i, m in enumerate(ms):
    if m[0] * m[1] > maxp:
        maxp = m[0] * m[1]
        maxi = i

win_all = True
m0 = ms[maxi]
for i, m in enumerate(ms):
    if i == maxi:
        continue

    if math.ceil(m0[0] / m[1]) <= math.ceil(m[0] / m0[1]):
        win_all = False


print(maxi + 1 if win_all else -1)
