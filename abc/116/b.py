def f(n):
    return n / 2 if n % 2 == 0 else 3 * n + 1

s = set()
i = 1
a = int(input())
while True:
    if a in s:
        print(i)
        break

    s.add(a)
    a = f(a)
    i += 1 