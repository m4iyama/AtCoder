def nrange(n):
    if n == -1:
        return range(0, 1)
    if n == 0:
        return range(0, 2)

    if n % 2 == 0:
        np = n
        nm = n - 1
    else:
        np = n - 1
        nm = n

    ma = (4**(np // 2 + 1) - 1) // 3
    mi = -2 * (4**((nm + 1) // 2) - 1) // 3

    return range(mi, ma+1)


n = int(input())
k = 0
while n not in nrange(k):
    k += 1

s = ''
while k >= 0:
    if (n in nrange(k)) and (n not in nrange(k-1)):
        n -= (-2)**k
        s += '1'
    else:
        s += '0'

    k -= 1

print(s)
