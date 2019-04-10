import statistics

n = int(input())
a = list(map(int, input().split(' ')))
b = [(a[i] - i) for i in range(n)]

m = round(statistics.median(b))
print(sum([abs(bi - m) for bi in b]))
