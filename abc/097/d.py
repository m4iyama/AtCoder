class UnionFind:
    def __init__(self, elems):
        self.parent = dict()
        for e in elems:
            self.parent[e] = e

    def root(self, e):
        if self.parent[e] == e:
            return e

        return self.root(self.parent[e])

    def same(self, x, y):
        return self.root(x) == self.root(y)

    def unite(self, x, y):
        if self.same(x, y):
            return

        self.parent[self.root(x)] = self.root(y)


n, m = map(int, input().split())
p = list(map(lambda z: int(z) - 1, input().split()))

uf = UnionFind(list(range(n)))

for _ in range(m):
    x, y = map(lambda z: int(z) - 1, input().split())
    uf.unite(p[x], p[y])

count = 0
for i in range(n):
    if p[i] == i or uf.same(p[i], i):
        count += 1

print(count)
