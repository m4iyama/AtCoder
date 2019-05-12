r, g, b, n = map(int, input().split())

count = 0
for i in range(n+1):
    rr = i * r
    for j in range(n+1):
        gg = g * j
        bb = (n - rr - gg)
        if bb >= 0 and bb % b == 0:
            count += 1

print(count)
