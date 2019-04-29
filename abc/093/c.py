a, b, c = sorted(map(int, input().split()))

count = 0
if (b - a) % 2 == 0:
    count += (b - a) // 2
else:
    count += (b + 1 - a) // 2 + 1

count += c - b

print(count)
