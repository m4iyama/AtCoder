s = input().strip()
for c in s:
    if c == '1':
        print('9', end='')
    elif c == '9':
        print('1', end='')
    else:
        print(c, end='')

print()
