d, g = gets.split.map(&:to_i)
ps, cs = [], []
1.upto(d) do
  p, c = gets.split.map(&:to_i)
  ps << p; cs << c
end

min_num_probs = 100 * 10 + 1
[true, false].repeated_permutation(d).each do |bs|
  num_probs, score = 0, 0
  (0..(d-1)).each do |i|
    if bs[i]
      score += (i+1) * 100 * ps[i] + cs[i]
      num_probs += ps[i]
    end
  end

  if score >= g
    min_num_probs = [min_num_probs, num_probs].min
    next
  end

  maxi = bs.rindex(false)
  next if maxi.nil?

  diff = g - score
  num_probs_i = (diff / ((maxi + 1) * 100).to_f).ceil
  next if num_probs_i >= ps[maxi]

  min_num_probs = [min_num_probs, num_probs + num_probs_i].min
end

puts min_num_probs
