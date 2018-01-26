# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd
# integer that is supplied as an argument to the method. The smallest such star you
# need to handle is a 7x7 grid.

# input: odd int, called n
# output: print an 8 pointed star (made of stars)
# assume: n > 6
# logic: top: (n / 2).downto(1) do |i| '*' + ' ' * (i - 1) + '*' + ' ' * (i - 1) + '*'
#       middle: puts '*' * n
#       bottom:

def star(n)
  (n / 2).downto(1) do |i|
    star = '*'
    space = ' ' * (i - 1)
    puts((star + space + star + space + star).center(n))
  end
  puts '*' * n
  1.upto(n / 2) do |i|
    star = '*'
    space = ' ' * (i - 1)
    puts((star + space + star + space + star).center(n))
  end
end

# Examples

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
