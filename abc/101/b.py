n = int(input())

sn = sum(map(int, list(str(n))))

print('Yes' if n % sn == 0 else 'No')