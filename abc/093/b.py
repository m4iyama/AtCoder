a, b, k = map(int, input().split())
nums = set()
for i in range(k):
    if i > (b - a):
        break

    nums.add(a + i)
    nums.add(b - i)

for x in sorted(list(nums)):
    print(x)
