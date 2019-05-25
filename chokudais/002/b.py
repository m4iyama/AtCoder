n = int(input())
for _ in range(n):
    ai, bi = map(int, input().split())
    print(ai % bi)
