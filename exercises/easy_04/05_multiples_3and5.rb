def multisum(int)
  multiples = []
  int.times do |i|
    multiples << i.next if i.next % 3 == 0 || i.next % 5 == 0
  end

  multiples.uniq.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
