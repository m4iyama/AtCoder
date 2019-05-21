n = int(input())
xs = list(map(int, input().split()))

# +-+-...
t1 = 0
s1 = 0
for (i, x) in enumerate(xs):
    s1 += x
    if i % 2 == 0:
        if s1 < 1:
            t1 += (1 - s1)
            s1 = 1
    else:
        if s1 > -1:
            t1 += (s1 + 1)
            s1 = -1

# -+-+...
t2 = 0
s2 = 0
for (i, x) in enumerate(xs):
    s2 += x
    if i % 2 == 0:
        if s2 > -1:
            t2 += (s2 + 1)
            s2 = -1
    else:
        if s2 < 1:
            t2 += (1 - s2)
            s2 = 1

print(min(t1, t2))
