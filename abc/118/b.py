n, m = map(int, input().split())
a = set(range(1, m+1))
for _ in range(n):
    _, *ai = map(int, input().split())
    a = a & set(ai)

print(len(a))
