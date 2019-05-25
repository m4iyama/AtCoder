import itertools


n, a, b, c = map(int, input().split())
ls = [int(input()) for _ in range(n)]

mint = 1e9
for comb in itertools.product((0, 1, 2, 3), repeat=len(ls)):
    fa = [ls[i] for i in range(len(ls)) if comb[i] == 1]
    fb = [ls[i] for i in range(len(ls)) if comb[i] == 2]
    fc = [ls[i] for i in range(len(ls)) if comb[i] == 3]

    if len(fa) == 0 or len(fb) == 0 or len(fc) == 0:
        continue

    mint = min(mint, (len(fa) + len(fb) + len(fc) - 3) * 10 +
               abs(sum(fa) - a) + abs(sum(fb) - b) + abs(sum(fc) - c))


print(mint)
