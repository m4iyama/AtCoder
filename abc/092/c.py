n = int(input())
a = list(map(int, input().split()))
a = [0] + a + [0]

sum = 0
for i in range(len(a)-1):
    sum += abs(a[i+1] - a[i])

for i in range(1, len(a)-1):
    if (a[i] - a[i-1]) * (a[i+1] - a[i]) > 0:
        print(sum)
    else:
        save = 2 * min(abs(a[i] - a[i-1]), abs(a[i+1] - a[i]))
        print(sum - save)
