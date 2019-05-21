def can_be_month(n):
    return 1 <= n <= 12


s = input().strip()
f = int(s[:2])
l = int(s[2:])

if can_be_month(f):
    print('AMBIGUOUS' if can_be_month(l) else 'MMYY')
else:
    print('YYMM' if can_be_month(l) else 'NA')
