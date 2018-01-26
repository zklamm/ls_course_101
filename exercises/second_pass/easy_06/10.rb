# Write a method that takes a positive integer, n, as an argument, and displays a
# right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

# input: pos int, n
# output: print right triangle whose sides have n stars
# assume: right angle is in bottom right
# logic: use 1.upto(n)

def triangle(n)
  1.upto(n) { |i| puts ('*' * i).rjust(n) }
end

# Examples:

triangle(5)

#     *
#    **
#   ***
#  ****
# *****
triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
