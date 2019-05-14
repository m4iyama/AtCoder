s = input().strip()
max_l = 0
for i in range(len(s)):
    for j in range(i, len(s)):
        if set(s[i:j+1]).issubset({'A', 'C', 'G', 'T'}):
            max_l = max(max_l, j+1 - i)

print(max_l)
