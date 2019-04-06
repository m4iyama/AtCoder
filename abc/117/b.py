_ = input()
ls = list(map(int, input().split()))

if 2 * max(ls) < sum(ls):
    print('Yes')
else:
    print('No')
