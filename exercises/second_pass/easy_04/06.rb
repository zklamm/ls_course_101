# Write a method that takes an Array of numbers, and returns an Array
# with the same number of elements, and each element has the running
# total from the original Array.

# input: array of numbers
# output: array of same size, but each element has running total
# logic: for each new element, look at sum of original elements up to new elements idx

def running_total(numbers)
  updated = []
  numbers.each_index do |idx|
    updated << numbers[0..idx].sum
  end
  updated
end

# Examples:

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
