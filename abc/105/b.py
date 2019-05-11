n = int(input())

can_buy = False
for i in range(n // 7 + 1):
    r = n - 7 * i
    if r % 4 == 0:
        can_buy = True

print('Yes') if can_buy else print('No')
