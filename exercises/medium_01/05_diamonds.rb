require 'pry'
def diamond(n)
  1.upto(n) { |i| puts(('*' * i).center(n)) if i.odd? }
  n.pred.downto(1) { |i| puts(('*' * i).center(n)) if i.odd? }
end

diamond(1)
puts '-------------------'
diamond(3)
puts '-------------------'
diamond(9)
puts '-------------------'

def hollow(n)
  pattern = Proc.new do |i|
    case i
    when 1
      edge = 0
      cen = 1
    else
      edge = 1
      cen = 2
    end
    row = '*' + ' ' * (i - cen) + '*' * edge
    puts row.center(n) if i.odd?
  end
  1.upto(n) { |i| pattern.call(i) }
  n.pred.downto(1) { |i| pattern.call(i) }
end

hollow(1)
puts '-------------------'
hollow(5)
puts '-------------------'
hollow(9)
