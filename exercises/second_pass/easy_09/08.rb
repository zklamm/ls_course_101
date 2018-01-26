# Create a method that takes two integers as arguments. The first argument is a count,
# and the second is the first number of a sequence that your method will create.
# The method should return an Array that contains the same number of elements
# as the count argument, while the values of each element will be multiples of
# the starting number.

# input: 2 ints (a count and the start of a sequence)
# output: ary, same size as input count, values of ary will be multiples of starting num
# You may assume that the count argument will always have a value of 0 or greater,
# while the starting number can be any integer value. If the count is 0, an empty
# list should be returned.
# logic: 1.upto(count) |i| ary << i * start

def sequence(count, start)
  (1..count).map { |i| i * start }
end

# Examples:

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
