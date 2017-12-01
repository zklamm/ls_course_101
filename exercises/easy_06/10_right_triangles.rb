def triangle(num)
  num.times { |i| puts ('*' * i.next).ljust(num) }
end

def upside_down(num)
  num.times { |i| puts ('*' * (num - i)).ljust(num) }
end

triangle(5)
puts '-----------------------------'
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
puts '-----------------------------'
upside_down(5)
puts '-----------------------------'
upside_down(9)