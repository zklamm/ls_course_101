# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as
# Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string
# from the previous exercise.

# input: int
# output: str version of input
# assume: don't use std conversion methods, but use previous method
# logic: need to prepend '+'or '-' depending on input value

DIGITS = %w[0 1 2 3 4 5 6 7 8 9]

def integer_to_string(int)
  str = ''
  int.digits.reverse.each do |dig|
    str += DIGITS[dig]
  end
  str
end

def signed_integer_to_string(int)
  return '0' if int == 0
  str = integer_to_string(int.abs)
  int > 0 ? str.prepend('+') : str.prepend('-')
end

# Examples

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
