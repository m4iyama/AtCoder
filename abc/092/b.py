n = int(input())
d, x = map(int, input().split())
a = [int(input()) for _ in range(n)]

c = 0
for ai in a:
    c += (d - 1) // ai + 1

print(c + x)
