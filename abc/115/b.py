n = int(input())
ps = []
for _ in range(n):
    ps.append(int(input()))

psum = sum(ps) - int(max(ps) / 2)
print(psum)