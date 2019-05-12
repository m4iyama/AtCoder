n = int(input())
count = 0
na, nb, nab = 0, 0, 0
for _ in range(n):
    s = input().strip()
    if s[0] == 'B' and s[-1] == 'A':
        nab += 1
    elif s[0] == 'B':
        nb += 1
    elif s[-1] == 'A':
        na += 1

    for i in range(len(s) - 1):
        if s[i:i+2] == 'AB':
            count += 1

if nab > 0:
    count += (nab - 1)
    if na > 0:
        na -= 1
        count += 1
    if nb > 0:
        nb -= 1
        count += 1

    count += min(na, nb)
else:
    count += min(na, nb)

print(count)
