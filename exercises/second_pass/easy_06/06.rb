# Write a method that takes two Arrays as arguments, and returns an Array
# that contains all of the values from the argument Arrays. There should
# be no duplication of values in the returned Array, even if there are
# duplicates in the original Arrays.

# input: two arys
# output: one ary
# assume: no dups in output
# logic: add two arrays and compress

def merge(ary1, ary2)
  (ary1 + ary2).uniq
end

# Example

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
