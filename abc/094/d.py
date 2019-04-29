n = int(input())
a = sorted(list(map(int, input().split())))

c = a[-1]
d = max(a[:-1], key=lambda x: min(x, c - x))

print(c, d)
