n, k = map(int, input().split())

hs = []
for _ in range(n):
    hs.append(int(input()))

hs = sorted(hs)

min_diff = float('inf')
for i in range(len(hs) - k + 1):
    min_diff = min(min_diff, hs[i+k-1]-hs[i])

print(min_diff)