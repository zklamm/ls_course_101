DIGITS = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 }

def remove_sign(str)
  if str.start_with?('+')
    sign = '+'
    str = str[1..-1]
  elsif str.start_with?('-')
    sign = '-'
    str = str[1..-1]
  end

  return sign, str
end

def string_to_signed_integer(str)
  sign, str = remove_sign(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = value * 10 + digit }
  sign == '-' ? -value : value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
