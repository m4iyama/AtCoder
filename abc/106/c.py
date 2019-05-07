s = input().strip()
k = int(input())

for i, c in enumerate(s):
    if c != '1':
        print(c)
        break

    if i == k - 1:
        print('1')
        break

