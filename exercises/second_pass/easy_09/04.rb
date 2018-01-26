# Write a method that takes an integer argument, and returns an Array of all integers
# in sequence, between 1 and the argument.

# input: int
# output: ary of 1 to arg
# You may assume that the argument will always be a valid integer that is greater than 0.
# logic: 1.upto(num) ary << i

def sequence(num)
  (1..num).to_a
end

# Examples:

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
