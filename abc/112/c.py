n = int(input())
xyhs = []
for _ in range(n):
    xyhs.append(tuple(map(int, input().split())))

xyhs = sorted(xyhs, key=lambda v: v[2], reverse=True)

anss = []
for y in range(101):
    for x in range(101):
        x0, y0, h0 = xyhs[0]
        ht = h0 + abs(x0 - x) + abs(y0 - y)

        flag = True
        for xyh in xyhs[1:]:
            xi, yi, hi = xyh
            his = max(ht - abs(xi - x) - abs(yi - y), 0)
            if his != hi:
                flag = False
                break

        if flag:
            anss.append((x, y, ht))

print(anss[0][0], anss[0][1], anss[0][2])
