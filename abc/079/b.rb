def lucas(n)
  return 1 if n == 1

  l1, l2 = 2, 1
  ll = l1 + l2

  i = 2
  until i == n
    nl = l2 + ll

    l1 = l2
    l2 = ll
    ll = nl

    i += 1
  end
  ll
end

n = gets.to_i
puts lucas(n)

