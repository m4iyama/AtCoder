a, b, k = map(int, input().split())
ith = 1
for i in range(min(a, b), 0, -1):
    if a % i == 0 and b % i == 0:
        if ith == k:
            print(i)
            break

        ith += 1

