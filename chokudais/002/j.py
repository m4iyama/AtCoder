def gcd(a, b):
    if b == 0:
        return a

    return gcd(b, a % b)


n = int(input())

ai, bi = map(int, input().split())
ga = ai
gb = bi
for _ in range(n-1):
    ai, bi = map(int, input().split())
    ga = max(gcd(ga, ai), gcd(ga, bi))
    gb = max(gcd(gb, ai), gcd(gb, bi))


print(max(ga, gb))
