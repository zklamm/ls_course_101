# Write a method that takes an Array of numbers and then returns the sum of
# the sums of each leading subsequence for that Array.

# input: an array of numbers
# output: int which is the sum of sums of each subsequence
# You may assume that the Array always contains at least one number.
# logic: multiply the first element by input.size, move to next element, multiply by
# input.size - 1 and so on until 0

def sum_of_sums(nums)
  sums = 0
  nums.each_with_index do |num, idx|
    sums += num * (nums.size - idx)
  end
  sums
end


# Examples:

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
