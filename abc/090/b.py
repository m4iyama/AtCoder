a, b = map(int, input().split())
c = 0
for x in range(a, b+1):
    if str(x) == str(x)[::-1]:
        c += 1

print(c)
