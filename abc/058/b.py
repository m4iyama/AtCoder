o = input().strip()
e = input().strip()
for i, c in enumerate(o):
    print(c, end='')
    if i < len(e):
        print(e[i], end='')

print()
