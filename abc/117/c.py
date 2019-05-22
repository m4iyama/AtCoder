n, m = map(int, input().split())
xs = list(map(int, input().split()))
xs = sorted(xs)

ds = [xs[i+1] - xs[i] for i in range(m-1)]
ds = sorted(ds, reverse=True)

print((xs[-1] - xs[0]) - sum(ds[:n-1]))
