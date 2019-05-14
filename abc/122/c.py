n, q = map(int, input().split())
s = input().strip()

c = [0 for _ in range(n)]
for i in range(1, n):
    if s[i-1:i+1] == 'AC':
        c[i] = c[i-1] + 1
    else:
        c[i] = c[i-1]

for _ in range(q):
    l, r = map(lambda x: int(x) - 1, input().split())
    if l == 0:
        print(c[r])
    else:
        print(c[r] - c[l-1] - 1 if s[l-1:l+1] == 'AC' else c[r] - c[l-1])
