def valid(s):
    if s[0] != 'A':
        return False
    if s[2:-1].count('C') != 1:
        return False

    num_upper = 0
    for c in list(s):
        if c.isupper():
            num_upper += 1

    if num_upper > 2:
        return False

    return True


s = input().strip()
print('AC') if valid(s) else print('WA')
