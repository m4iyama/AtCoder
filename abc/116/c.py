def times(hs):
    if len(hs) == 0:
        return 0
    if len(hs) == 1:
        return hs[0]

    minh = min(hs)
    mini = hs.index(minh)

    hs = [h - minh for h in hs]

    return minh + times(hs[:mini]) + times(hs[mini+1:])

_ = input()
hs = list(map(int, input().split()))

print(times(hs))
