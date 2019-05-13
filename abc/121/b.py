n, m, c = map(int, input().split())
b = list(map(int, input().split()))

count = 0
for _ in range(n):
    a = list(map(int, input().split()))
    if sum([a[i] * b[i] for i in range(len(a))]) + c > 0:
        count += 1

print(count)