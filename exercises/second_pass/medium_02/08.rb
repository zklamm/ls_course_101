# A featured number (something unique to this exercise) is an odd number that is a
# multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a
# featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7),
# and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next
# featured number that is greater than the argument. Issue an error message if there
# is no next featured number.

# input: int
# output: featured num greater than input, or error if there is none
# assume: featured num is odd, % 7 == 0, and its digs can only occur once each
# logic: until featured_num?, increment num by 1

def featured_num?(num)
  return false unless num.odd?
  return false unless num % 7 == 0
  return false unless num.digits.size == num.digits.uniq.size
  true
end

def featured(start)
  return 'Impossible' if start >= 9876543210
  num = start + 1
  num += 1 until featured_num?(num)
  num
end

# Examples:

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
