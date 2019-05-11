x1, y1, x2, y2 = map(int, input().split())

v23 = (-(y2 - y1), x2 - x1)
x3 = x2 + v23[0]
y3 = y2 + v23[1]

v34 = (-(y3 - y2), x3 - x2)
x4 = x3 + v34[0]
y4 = y3 + v34[1]

print(x3, y3, x4, y4)
