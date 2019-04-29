n, c = map(int, input().split())
ss = [tuple(map(int, input().split())) for _ in range(n)]

max_e = 0

# clock
e = 0
for x, v in ss:
    e += v
    max_e = max(max_e, e - x)

# aclock
e = 0
for x, v in ss[::-1]:
    e += v
    max_e = max(max_e, e - (c - x))


# aclock -> clock
clocks = []
e = 0
for x, v in ss:
    e += v
    clocks.append(e - x)

max_clocks = clocks[:]
for i in range(1, len(clocks)):
    max_clocks[i] = max(clocks[i], max_clocks[i-1])

e = 0
for i in range(len(ss) - 1, 0, -1):
    x, v = ss[i]
    e += v
    max_e = max(max_e, e - 2 * (c - x) + max_clocks[i-1])

# clock -> aclock
aclocks = []
e = 0
for x, v in ss[::-1]:
    e += v
    aclocks.append(e - (c - x))

max_aclocks = aclocks[:]
for i in range(1, len(aclocks)):
    max_aclocks[i] = max(aclocks[i], max_aclocks[i-1])

aclocks.reverse()
max_aclocks.reverse()

e = 0
for i in range(len(ss) - 1):
    x, v = ss[i]
    e += v
    max_e = max(max_e, e - 2 * x + max_aclocks[i+1])

print(max_e)
