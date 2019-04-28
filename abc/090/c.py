n, m = sorted(map(int, input().split()))
if n == 1:
    print(1) if m == 1 else print(m-2)
else:
    print((n - 2) * (m - 2))
