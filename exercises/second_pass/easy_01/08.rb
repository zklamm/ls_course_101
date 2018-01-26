# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array. The array will never
# be empty and the numbers will always be positive integers.

# in: array of ints
# out: average of ints
# assume: array will not be empty, ints always pos
# logic: create sum variable and divide by length of array

def average(ary)
  ary.sum / ary.length
end

# Examples:

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.
