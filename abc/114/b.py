s = input()

min_diff = float('inf')
for i in range(len(s) - 2):
    x = int(s[i:i+3])
    min_diff = min(min_diff, abs(753 - x))

print(min_diff)