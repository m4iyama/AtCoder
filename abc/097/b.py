def is_power(n):
    for p in range(2, 10):
        for b in range(1, 32):
            if b**p == n:
                return True
            if b**p > n:
                break

    return False


x = int(input())
for i in range(x, 0, -1):
    if is_power(i):
        print(i)
        break
