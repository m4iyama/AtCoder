n, k = map(int, input().split())
s = input().strip()

print(s[0:k-1] + s[k-1].lower() + s[k:])