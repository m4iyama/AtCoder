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
bs = []
for _ in range(m):
    bs.append(tuple(map(int, input().split())))

bs.reverse()

uf = UnionFind(list(range(1, n+1)))

inconv = n * (n - 1) // 2
inconvs = [inconv]
for b in bs[:-1]:
    i1, i2 = b
    if not uf.same(i1, i2):
        inconv -= uf.members(i1) * uf.members(i2)

    inconvs.append(inconv)
    uf.unite(i1, i2)

for inc in reversed(inconvs):
    print(inc)
