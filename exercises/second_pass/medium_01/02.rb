# Write a method that can rotate the last n digits of a number. For example:


# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

# input: number, n digits
# output: number with n digits rotated
# assume: 1 rotation means output will equal input, use method from previous exercise, n is pos
# logic: left, right = num.divmod(10**n), call rotate_array on right.digits.reverse.
# convert left to a string, join return from rotate method, add to left, return


def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

def rotate_rightmost_digits(num, n)
  left, right = num.divmod(10**n)
  (left.to_s + rotate_array(right.digits.reverse).join).to_i
end

# examples

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
