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

        rx = self.root(x)
        ry = self.root(y)
        self.parent[rx] = ry


n, k, l = map(int, input().split())
uf1 = UnionFind(list(range(n)))
uf2 = UnionFind(list(range(n)))

for i in range(k):
    a, b = map(lambda x: int(x) - 1, input().split())
    uf1.unite(a, b)

for i in range(l):
    a, b = map(lambda x: int(x) - 1, input().split())
    uf2.unite(a, b)


ps = [(uf1.root(i), uf2.root(i)) for i in range(n)]
counts = dict()
for p in ps:
    if p in counts:
        counts[p] += 1
    else:
        counts[p] = 1


nums = [counts[p] for p in ps]
print(' '.join(map(str, nums)))
