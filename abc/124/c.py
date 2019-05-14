s = input().strip()

t1 = ('01' * (len(s) // 2 + 1))[:len(s)]
t2 = ('10' * (len(s) // 2 + 1))[:len(s)]

d1, d2 = 0, 0
for i in range(len(s)):
    cs, ct1, ct2 = s[i], t1[i], t2[i]
    if cs != ct1:
        d1 += 1
    else:
        d2 += 1

print(min(d1, d2))
