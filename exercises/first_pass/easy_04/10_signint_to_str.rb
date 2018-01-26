DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
  result = ''
  loop do
    int, remainder = int.divmod(10)
    result.prepend(DIGITS[remainder])
    break if int == 0
  end
  result
end

def signed_integer_to_string(int)
  int_pos = -int if int < 0
  if int < 0
    integer_to_string(int_pos).prepend('-')
  elsif int > 0
    integer_to_string(int).prepend('+')
  else
    integer_to_string(int)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
