n, m, x = map(int, input().split())
a = list(map(int, input().split()))

l, r = 0, 0
for ai in a:
    if ai < x:
        l += 1
    else:
        r += 1

print(min(l, r))