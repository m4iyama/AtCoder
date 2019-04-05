class Drone
  attr_accessor :x, :y
  def initialize
    @x = 0
    @y = 0
  end

  def move(c)
    case c
    when 'L'
      @x -= 1
    when 'R'
      @x += 1
    when 'U'
      @y += 1
    when 'D'
      @y -= 1
    end
  end

  def dist
    @x.abs + @y.abs
  end
end

s = gets.chomp
t = gets.to_i

d = Drone.new
s.chars.each do |c|
  d.move(c) if c != '?'
end

dist = d.dist
hatenas = s.count('?')

case t
when 1
  puts dist + hatenas
when 2
  mndist = dist - hatenas
  if mndist >= 0
    puts mndist
  else
    puts mndist.even? ? 0 : 1
  end
end
