n = int(input())
cs = set()
for _ in range(n):
    ai, bi = sorted(list(map(int, input().split())))
    cs.add((ai, bi))

print(len(cs))
