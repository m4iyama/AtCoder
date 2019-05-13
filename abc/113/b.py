n = int(input())
t, a = map(int, input().split())

hs = list(map(int, input().split()))
min_i, min_diff = 0, 1e8
for i, h in enumerate(hs):
    ti = t - h * 0.006
    if abs(a - ti) < min_diff:
        min_diff = abs(a - ti)
        min_i = i

print(min_i + 1)
