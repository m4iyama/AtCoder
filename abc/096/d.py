def primes(m):
    import math

    a = list(range(2, m))
    limit = math.ceil(math.sqrt(m))
    ps = []

    while True:
        p = a[0]
        if limit < p:
            return ps + a

        ps.append(p)

        a = [ai for ai in a if ai % p != 0]


primes = primes(10000)
n = int(input())

arr = []
while len(arr) < n:
    p = primes.pop()
    if p % 5 == 1:
        arr.append(p)

print(' '.join(map(str, arr)))
