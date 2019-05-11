n, m, X, Y = map(int, input().split())
max_x = max(map(int, input().split()))
min_y = min(map(int, input().split()))

if max_x < min_y and X < Y and X < min_y and max_x < Y:
    print('No War')
else:
    print('War')
