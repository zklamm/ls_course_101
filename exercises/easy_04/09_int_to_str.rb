# First try
DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

=begin
def integer_to_string(int)
  int.digits.map { |digit| DIGITS[digit] }.reverse.join
end

=end

# Second try, after glancing at solution

def integer_to_string(int)
  result = ''
  loop do
    int, remainder = int.divmod(10)
    result.prepend(DIGITS[remainder])
    break if int == 0
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
