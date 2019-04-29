import math

q = int(input())
for _ in range(q):
    a, b = sorted(map(int, input().split()))
    if a == b:
        print(2 * a - 2)
    elif a + 1 == b:
        print(2 * a - 2)
    else:
        c = math.ceil(math.sqrt(a * b)) - 1

        if c * (c + 1) >= a * b:
            print(2 * c - 2)
        else:
            print(2 * c - 1)
