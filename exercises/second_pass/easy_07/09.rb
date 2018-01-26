# Write a method that takes two Array arguments in which each Array contains
# a list of numbers, and returns a new Array that contains the product of
# every pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.

# input: 2 arys of numbers
# output: new ary, in increasing order, of each possible combination between the two elements
# You may assume that neither argument is an empty Array.
# logic: use two iterators to lock one list, multiply it by all elements of the other, then
# move to the next element and repeat, all the while storing to products. Sort products.

def multiply_all_pairs(nums1, nums2)
  products = []
  nums1.each do |num1|
    nums2.each do |num2|
      products << num1 * num2
    end
  end
  products.sort
end

# Examples:

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
