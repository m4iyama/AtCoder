def gcd(a, b):
    if a == 0:
        return b

    return gcd(b % a, a)


n = int(input())
xs = list(map(int, input().split()))

g = gcd(xs[0], xs[1])
for x in xs[2:]:
    g = gcd(g, x)

print(g)
