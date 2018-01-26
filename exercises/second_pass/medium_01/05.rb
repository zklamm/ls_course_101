# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
# an odd integer that is supplied as an argument to the method. You may assume that
# the argument will always be an odd integer.

# input: an odd int, n
# output: print a diamond (of stars) on a n*n grid
# assume: n is always odd
# logic: for top: 1.upto(n / 2) do |i| puts "*" * (
#        for middle: puts "*" * n
#        for bottom: (n / 2).downto(1) do |i| puts ("*" * (n - 2 * i)).center(n)

def diamond(n)
  (n / 2).downto(1) { |i| puts ("*" * (n - 2 * i)).center(n) }
  puts '*' * n
  1.upto(n / 2) { |i| puts ("*" * (n - 2 * i)).center(n) }
end

# Examples

diamond(1)

# *
diamond(3)

#  *
# ***
#  *
diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
