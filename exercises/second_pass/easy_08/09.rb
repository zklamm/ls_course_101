# Write a method that takes a positive integer as an argument and returns
# that number with its digits reversed.

# input: pos int
# output: input w/ digs reversed
# logic: num.to_s.reverse.to_i

def reversed_number(num)
  num.to_s.reverse.to_i
end

# Examples:

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1
