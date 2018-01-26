# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining digits,
# you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759.
# Keep the first 3 digits fixed in place and rotate again to get 321597. Finally,
# keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation
# of that argument. You can (and probably should) use the rotate_rightmost_digits
# method from the previous exercise.

# input: int
# output: int (input with max rotation)
# logic: countdown n, from input.to_s.size down to 1
# call rotate_rightmost on input with argument of n being input.to_s.size
# call rotate_rightmost on return with argument being size - 1

def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(num)
  rotated = num
  num.to_s.size.downto(1) do |i|
    rotated = rotate_rightmost_digits(rotated, i)
  end
  rotated
end

# Example:

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
