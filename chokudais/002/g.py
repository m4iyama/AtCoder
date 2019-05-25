def gcd(a, b):
    if b == 0:
        return a

    return gcd(b, a % b)


n = int(input())
for _ in range(n):
    ai, bi = map(int, input().split())
    print(gcd(ai, bi))
