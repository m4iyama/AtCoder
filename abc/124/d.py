n, k = map(int, input().split())
s = input().strip()

s0 = [len(si) for si in s.split('1') if len(si) > 0]
s1 = [len(si) for si in s.split('0') if len(si) > 0]

if s[0] == '0':
    if len(s0) <= k:
        print(len(s))
    else:
        con = sum(s0[:k]) + sum(s1[:k])
        max_con = con
        for i in range(1, len(s0) - (k+2)):
            con += (s0[i+k+1] - s0[i-1])
else:
    pass
