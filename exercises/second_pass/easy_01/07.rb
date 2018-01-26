# Write a method that takes one argument, a positive integer, and returns a string of
# alternating 1s and 0s, always starting with 1. The length of the string should match
# the given integer.

# input: pos int
# output: string of alternating 1's and 0's, length will match input
# assume: always starts with 1
# logic: return '10' input / 2 times + '1' input % 2 times

def stringy(int)
  '10' * (int / 2) + '1' * (int % 2)  
end

# Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# The tests above should print true.