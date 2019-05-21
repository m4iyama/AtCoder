def p(dice, k):
    times = 0
    score = dice
    while score < k:
        score *= 2
        times += 1

    return 1/(2**times)


n, k = map(int, input().split())
prob = 0.0
for i in range(1, n+1):
    prob += (1.0 / n) * p(i, k)

print(prob)
