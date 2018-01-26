# Write a method that takes two Array arguments in which each Array contains
# a list of numbers, and returns a new Array that contains the product of
# each pair of numbers from the arguments that have the same index.

# input: 2 arys of numbers
# output: 1 ary of products of corresponding numbers
# assume that the arguments contain the same number of elements.
# logic: iterate thru nums1 each_with_index, storing product into variable, return variable

def multiply_list(nums1, nums2)
  products = []
  nums1.each_index do |idx|
    products << nums1[idx] * nums2[idx]
  end
  products
end

# Examples:

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
