def prompt(str)
  puts "==> #{str}"
end

prompt('Enter the 1st number')
first = gets.to_i
prompt('Enter the 2nd number')
second = gets.to_i
prompt('Enter the 3rd number')
third = gets.to_i
prompt('Enter the 4th number')
fourth = gets.to_i
prompt('Enter the 5th number')
fifth = gets.to_i

collection = [first, second, third, fourth, fifth]

prompt('Enter the last number')
last = gets.to_i

if collection.include?(last)
  puts "The number #{last} appears in #{collection}."
else
  puts "The number #{last} does not appear in #{collection}."
end
