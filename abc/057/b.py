n, m = map(int, input().split())
ss = [tuple(map(int, input().split())) for _ in range(n)]
ps = [tuple(map(int, input().split())) for _ in range(m)]


def d(s, p):
    return abs(s[0] - p[0]) + abs(s[1] - p[1])


for s in ss:
    mini = 0
    mind = d(s, ps[0])
    for i in range(1, len(ps)):
        p = ps[i]
        if d(s, p) < mind:
            mini = i
            mind = d(s, p)

    print(mini + 1)
