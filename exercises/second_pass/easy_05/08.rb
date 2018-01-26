# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

ENGLISH = %w[
  zero one two three four five six seven eight nine ten eleven
  twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen
]

# input: (0..19).to_a
# output: same array but sorted based on english words
# logic: use #sort_by and reference the given english words

def alphabetic_number_sort(ary)
  ary.sort_by { |num| ENGLISH[num] }
end

# Examples:

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]