n = int(input())

reds = []
for _ in range(n):
    reds.append(list(map(int, input().split())))

blues = []
for _ in range(n):
    blues.append(list(map(int, input().split())))

blues = sorted(blues, key=lambda x: x[0])

count = 0
for blue in blues:
    lefts = sorted([red for red in reds if red[0] < blue[0]
                    and red[1] < blue[1]], key=lambda r: r[1])
    if len(lefts) == 0:
        continue

    reds.remove(lefts[-1])
    count += 1

print(count)
