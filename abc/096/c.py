h, w = map(int, input().split())
s = [input().strip() for _ in range(h)]


def can_paint():
    for i in range(h):
        for j in range(w):
            if s[i][j] == '.':
                continue

            ns = []
            if i != 0:
                ns.append(s[i-1][j])
            if i != h-1:
                ns.append(s[i+1][j])
            if j != 0:
                ns.append(s[i][j-1])
            if j != w-1:
                ns.append(s[i][j+1])

            if ns.count('#') == 0:
                return False

    return True


print('Yes') if can_paint() else print('No')
