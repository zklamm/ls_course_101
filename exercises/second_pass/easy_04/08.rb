# In the previous exercise, you developed a method that converts simple numeric strings
# to Integers. In this exercise, you're going to extend that method to work with
# signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number
# as an integer. The String may have a leading + or - sign; if the first character
# is a +, your method should return a positive number; if it is a -, your method
# should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such
# as String#to_i, Integer(), etc. You may, however, use the string_to_integer
# method from the previous lesson.

# input: str of digits
# output: corresponding int
# assume: str will always have valid int, you can use previous method
# logic: if first char is '+' return positive, elsif '-', return neg, else pos

DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(str)
  sum = 0
  str.chars.each_with_index do |char, idx|
    sum += DIGITS[char] * 10**(str.size - (idx +1))
  end
  sum
end

def string_to_signed_integer(str)
  case str[0]
  when '+' then string_to_integer(str[1..-1])
  when '-' then -string_to_integer(str[1..-1])
  else          string_to_integer(str)
  end
end

# Examples

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
