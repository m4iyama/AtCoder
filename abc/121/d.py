def f(x):
    y = (x + 1) % 4
    if y == 0:
        return 0
    elif y == 1:
        return x
    elif y == 2:
        return 1
    else:
        return x ^ (x - 1) ^ (x - 2)


a, b = map(int, input().split())
print(f(b) ^ f(a-1))
