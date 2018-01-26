def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

# def rotate_rightmost_digits(num, digits)
#   left, right = num.divmod(10**digits)
#   [[left], rotate_array(right.to_s.chars)].join.to_i
# end

# The above method (from previous exercise) creates problems
# when used in conjunction with the max_rotation method.
# I had to use LS's method (below) because the method above
# will drop the leading zeros through iterations, whereas
# LS's method will not drop leading zeros until the last step,
# where the string is converted to an integer.

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(num)
  digits = num.digits.size
  digits.downto(2) do |n|
    num = rotate_rightmost_digits(num, n)
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
