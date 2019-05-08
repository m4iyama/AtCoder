n, k = map(int, input().split())
x = list(map(int, input().split()))

min_t = 10e9
for s in range(n - k + 1):
    e = s + k - 1
    l = min(x[s], 0)
    r = max(x[e], 0)

    t = min(-l, r) * 2 + max(-l, r)
    min_t = min(min_t, t)

print(min_t)
