d = dict()

n = int(input())
w0 = input().strip()
d[w0] = True
c = w0[-1]

ok = True
for _ in range(n-1):
    w = input().strip()
    if w in d or w[0] != c:
        ok = False
        break

    d[w] = True
    c = w[-1]

print('Yes' if ok else 'No')
