def sum(int)
  int.to_s.chars.map(&:to_i).sum
end

# Using recursion:

def sum(int)
  if int.to_s.length == 2
    (int / 10) + (int % 10)
  else
    sum(int / 10) + (int % 10)
  end
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
