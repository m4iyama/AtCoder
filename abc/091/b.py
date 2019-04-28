n = int(input())
ss = {}
for i in range(n):
    s = input().strip()
    if s in ss:
        ss[s] += 1
    else:
        ss[s] = 1

m = int(input())
ts = {}
for i in range(m):
    s = input().strip()
    if s in ts:
        ts[s] += 1
    else:
        ts[s] = 1

max_score = 0
for s, sc in ss.items():
    tc = ts[s] if s in ts else 0
    max_score = max(max_score, sc - tc)

print(max_score)
