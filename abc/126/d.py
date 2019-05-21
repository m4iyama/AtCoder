def bang(n):
    if n == 0:
        return 1
    else:
        return 0


n = int(input())

edges = [[] for _ in range(n)]
for _ in range(n-1):
    u, v, w = map(int, input().split())
    u -= 1
    v -= 1
    edges[u].append((v, w))
    edges[v].append((u, w))

colors = [-1 for _ in range(n)]


def dfs(u, c):
    colors[u] = c
    for v, w in edges[u]:
        if colors[v] != -1:
            continue

        if w % 2 == 0:
            dfs(v, c)
        else:
            dfs(v, bang(c))


dfs(0, 0)
for c in colors:
    print(c)
