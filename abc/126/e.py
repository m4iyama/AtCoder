class UnionFind:
    def __init__(self, elems):
        self.parent = dict()
        self.children = dict()
        for e in elems:
            self.parent[e] = e
            self.children[e] = 1

    def root(self, e):
        if self.parent[e] == e:
            return e

        return self.root(self.parent[e])

    def same(self, x, y):
        return self.root(x) == self.root(y)

    def unite(self, x, y):
        if self.same(x, y):
            return

        rx, ry = self.root(x), self.root(y)
        # ry <- rx
        if self.members(ry) < self.members(rx):
            rx, ry = ry, rx

        self.children[ry] += self.children[rx]
        self.parent[rx] = ry

    def members(self, x):
        return self.children[self.root(x)]


n, m = map(int, input().split())

uf = UnionFind(range(1, n+1))
c = 0
for _ in range(m):
    x, y, z = map(int, input().split())
    if uf.same(x, y):
        continue
    else:
        c += 1
        uf.unite(x, y)

print(n - c)
