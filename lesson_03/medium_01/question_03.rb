def factors(number)
  dividend = number
  return "Please only input positive integers" if number <= 0
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

def factors_upd(num)
  dividend = num
  divisors = []
  while dividend > 0
    divisors << num / dividend if num % dividend == 0
    dividend -= 1
  end
  divisors
end

puts factors(99)
puts factors_upd(99)
