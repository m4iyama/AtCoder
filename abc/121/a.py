h, w = map(int, input().split())
hh, ww = map(int, input().split())

print(h * w - (w * hh + h * ww - (hh * ww)))
