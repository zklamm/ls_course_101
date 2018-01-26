# Write a method that takes a number as an argument. If the argument is a positive
# number, return the negative of that number. If the number is 0 or negative,
# return the original number.

# input: num
# output: negative version of number
# logic: call abs on num and then multiply by -1

def negative(num)
  num.abs * -1
end

# Examples:

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
