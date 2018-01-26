# In the previous two exercises, you developed methods that convert simple numeric
# strings to signed Integers. In this exercise and the next, you're going to
# reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string
# representation.

# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
# old-fashioned way and construct the string by analyzing and manipulating the number.

# input: int >= 0
# output: str of input
# assume: no std conv methods
# logic: use a hash to convert each digit

DIGITS = %w[0 1 2 3 4 5 6 7 8 9]

def integer_to_string(int)
  str = ''
  int.digits.reverse.each do |dig|
    str += DIGITS[dig]
  end
  str
end

# Examples

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
