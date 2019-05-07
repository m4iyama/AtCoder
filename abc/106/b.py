def divisors(x):
    c = 0
    for i in range(1, x+1):
        if x % i == 0:
            c += 1

    return c


n = int(input())
count = 0
for m in range(1, n+1):
    if m % 2 == 0:
        continue

    if divisors(m) == 8:
        count += 1

print(count)
