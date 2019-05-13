from collections import namedtuple, defaultdict

City = namedtuple('City', ('num', 'pref', 'year'))
cities = defaultdict(list)

n, m = map(int, input().split())
for i in range(m):
    p, y = map(int, input().split())
    cities[p].append(City(i, p, y))

for _, cs in cities.items():
    cs.sort(key=lambda c: c.year)

ids = ['' for _ in range(m)]
for pref, cs in cities.items():
    for ith, c in enumerate(cs):
        ids[c.num] = str(c.pref).zfill(6) + str(ith + 1).zfill(6)

for id in ids:
    print(id)
