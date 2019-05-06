class UnionFind:
    def __init__(self, elems):
        self.parent = dict()
        for e in elems:
            self.parent[e] = e

    def root(self, e):
        if self.parent[e] == e:
            return e

        self.parent[e] = self.root(self.parent[e])
        return self.parent[e]

    def same(self, x, y):
        return self.root(x) == self.root(y)

    def unite(self, x, y):
        if self.same(x, y):
            return

        self.parent[self.root(x)] = self.root(y)


n, q = map(int, input().split())
uf = UnionFind(list(range(n)))
for _ in range(q):
    p, a, b = map(int, input().split())
    if p == 0:
        uf.unite(a, b)
    else:
        print('Yes') if uf.same(a, b) else print('No')
