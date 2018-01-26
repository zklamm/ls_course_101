# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# input: pos int, sum or prod of all numbers between 1 and int
# logic: get number, get operation, compute, print results

def compute_sum(int)
  sum = 0
  1.upto(int) { |i| sum += i }
  sum
end

def compute_prod(int)
  prod = 1
  1.upto(int) { |i| prod *= i }
  prod
end

puts ">> Please enter an integer greater than 0:"
num = gets.to_i

op = ''

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  op = gets.chomp.downcase
  break if op == 's' || op == 'p'
end

result = if op == 's'
  op = 'sum'
  compute_sum(num)
else op == 'p'
  op = 'product'
  compute_prod(num)
end

puts "The #{op} of the integers between 1 and #{num} is #{result}."
