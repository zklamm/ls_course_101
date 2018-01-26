# Write a method that takes an Array as an argument, and returns two Arrays
# that contain the first half and second half of the original Array,
# respectively. If the original array contains an odd number of elements,
# the middle element should be placed in the first half Array.

# input: ary
# output: new ary of 1st half ary and 2nd half ary
# assume: any middle elems will go to 1st half
# logic: iterate thru ary, if elems idx is less than half the size of ary, goes to 1st

def halvsies(ary)
  half = ary.size / 2.0
  left = []
  right = []
  ary.each_with_index do |elem, idx|
    idx < half ? left << elem : right << elem
  end
  [left, right]
end

# Examples:

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
