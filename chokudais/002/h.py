n = int(input())
for _ in range(n):
    ai, bi = sorted(list(map(int, input().split())))
    if ai == bi:
        print(-1)
    else:
        print(bi - ai)