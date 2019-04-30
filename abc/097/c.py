def all_index(s, c):
    ins = []
    for i in range(len(s)):
        if s[i] == c:
            ins.append(i)

    return ins


s = input().strip()
k = int(input())

ss = set()
alphabets = sorted(list(set(s)))
for c in alphabets:
    ins = all_index(s, c)
    for i in ins:
        for j in range(i, len(s)):
            if (j+1 - i) > k:
                break

            ss.add(s[i:j+1])

    if len(ss) >= k:
        break

print(sorted(list(ss))[k-1])
