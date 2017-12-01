def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

def rotate_rightmost_digits(num, digits)
  left, right = num.divmod(10**digits)
  [[left], rotate_array(right.to_s.chars)].join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
