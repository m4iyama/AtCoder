n = int(input())

sum = 0
i = 1
while i**2 + i < n:
    if (n - i) % i == 0:
        sum += (n - i) // i

    i += 1

print(sum)
