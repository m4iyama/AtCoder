import itertools

n = int(input())
m = len(str(n))

count = 0
for mm in range(3, m+1):
    for v in itertools.product('357', repeat=mm):
        if len(set(v)) == 3 and int("".join(v)) <= n:
            count += 1

print(count)