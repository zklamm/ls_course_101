def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_to(num, power)
  return 1 if power == 0
  multiply(num, power_to(num, power - 1))
end

puts power_to(5, 2)
