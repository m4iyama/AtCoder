n, k = map(int, input().split())

if k % 2 != 0:
    count = 0
    for i in range(1, n+1):
        if i % k == 0:
            count += 1

    print(count ** 3)
else:
    count1, count2 = 0, 0
    for i in range(1, n+1):
        if i % k == 0:
            count1 += 1
        if i % k == (k / 2):
            count2 += 1

    print(count1 ** 3 + count2 ** 3)


