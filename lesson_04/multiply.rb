def multiply(nums, multiplier)
  count = 0
  multiplied = []

  loop do
    break if count == nums.size
    multiplied << nums[count] * multiplier
    count += 1
  end

  multiplied
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
