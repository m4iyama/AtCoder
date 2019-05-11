from collections import defaultdict

n = int(input())
vs = list(map(int, input().split()))

vsd1 = defaultdict(int)
for i in range(0, n, 2):
    vsd1[vs[i]] += 1

vsd2 = defaultdict(int)
for i in range(1, n, 2):
    vsd2[vs[i]] += 1

vsc1 = []
for k, v in vsd1.items():
    vsc1.append((k, v))

vsc2 = []
for k, v in vsd2.items():
    vsc2.append((k, v))

vsc1.append((-1, 0))
vsc2.append((-1, 0))
vsc1 = sorted(vsc1, key=lambda x: x[1], reverse=True)
vsc2 = sorted(vsc2, key=lambda x: x[1], reverse=True)

if vsc1[0][0] != vsc2[0][0]:
    print(n - (vsc1[0][1] + vsc2[0][1]))
else:
    print(n - max(vsc1[0][1] + vsc2[1][1], vsc1[1][1] + vsc2[0][1]))
