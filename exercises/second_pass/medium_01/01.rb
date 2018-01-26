# Write a method that rotates an array by moving the first element to the end of
# the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# input: ary
# output: new ary that is same as input, but with first element reassigned to the end of
# output
# assume: we cannot use #rotate(!), and cannot modify input
# logic: initialize rotated, iterate thru ary with idx, if != -1 rotated << ary[i+1], else
# rotated << ary[0], then return rotated

def rotate_array(ary)
  rotated = []
  ary.each_with_index do |elem, idx|
    idx < ary.size - 1 ? rotated << ary[idx + 1] : rotated << ary[0]
  end
  rotated
end

# Example:

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
