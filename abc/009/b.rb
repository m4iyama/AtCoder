require 'set'

s = Set.new
n = gets.to_i
n.times { s.add(gets.to_i) }

puts s.to_a.sort.reverse[1]