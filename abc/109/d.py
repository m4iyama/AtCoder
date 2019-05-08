h, w = map(int, input().split())
a = []
for _ in range(h):
    a.append(list(map(int, input().split())))

moves = []
for i in range(h):
    if i % 2 == 0:
        for j in range(w):
            if a[i][j] % 2 == 1:
                if j == w - 1 and i != h - 1:
                    a[i+1][j] += 1
                    moves.append((i+1, j+1, i+2, j+1))
                elif j != w - 1:
                    a[i][j+1] += 1
                    moves.append((i+1, j+1, i+1, j+2))
    else:
        for j in range(w-1, -1, -1):
            if a[i][j] % 2 == 1:
                if j == 0 and i != h - 1:
                    a[i+1][j] += 1
                    moves.append((i+1, j+1, i+2, j+1))
                elif j != 0:
                    a[i][j-1] += 1
                    moves.append((i+1, j+1, i+1, j))

print(len(moves))
for m in moves:
    print(' '.join(map(str, m)))


