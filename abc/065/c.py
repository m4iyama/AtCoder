import math

divider = 1000000007

n, m = map(int, input().split())
diff = abs(n - m)

if diff == 0:
    print(2 * math.factorial(n) * math.factorial(m) % divider)
elif diff == 1:
    print(math.factorial(n) * math.factorial(m) % divider)
else:
    print(0)
