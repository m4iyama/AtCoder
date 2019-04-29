a, b = map(int, input().split())
f = [['#' for _ in range(100)] for _ in range(50)] + \
    [['.' for _ in range(100)] for _ in range(50)]

for i in range(a-1):
    h = (i // 50) * 2
    w = (i % 50) * 2
    f[h][w] = '.'

for i in range(b-1):
    h = -((i // 50) * 2 + 1)
    w = (i % 50) * 2
    f[h][w] = '#'

print(100, 100)
for line in f:
    print(''.join(line))
