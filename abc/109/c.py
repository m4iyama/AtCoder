def gcd(l):
    if len(l) == 1:
        return l[0]

    v = gcd2(l[0], l[1])
    for i in range(2, n):
        v = gcd2(v, l[i])

    return v


def gcd2(a, b):
    if b == 0:
        return a

    return gcd2(b, a % b)


n, s = map(int, input().split())
x = list(map(int, input().split()))

x = [abs(xi - s) for xi in x]
print(gcd(x))

