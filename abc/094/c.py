n = int(input())
x = list(map(int, input().split()))
sx = sorted(x)

m1 = sx[len(sx) // 2 - 1]
m2 = sx[len(sx) // 2]

for xi in x:
    if xi <= m1:
        print(m2)
    else:
        print(m1)
