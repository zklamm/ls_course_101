# Write a method that takes two sorted Arrays as arguments, and returns a new Array
# that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array.
# You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# input: two sorted arys
# output: one sorted ary made from inputs
# assume: cannot use #sort(!), do not mutate input arys
# logic: initialize merged as [], i1 as 0, & i2 as 0. compare the first element of each ary
#         ary1[i1] <=> ary2[i2], then if 1, add ary1[i1] to merged and increment i1
#                                   if -1, add ary2[i2] and increment i2
#                                   if 0 or nil, add both and increment both
#       do this until i1 == ary1.size && i2 == ary2.size
#       return merged.compact

def merge(ary1, ary2)
  merged = []
  i1 = 0
  i2 = 0
  until i1 >= ary1.size && i2 >= ary2.size
    case ary1[i1] <=> ary2[i2]
    when -1
      merged << ary1[i1]
      i1 += 1
    when 1
      merged << ary2[i2]
      i2 += 1
    else
      new_ary << ary1[i1]
      new_ary << ary2[i2]
      i1 += 1
      i2 += 1
    end
  end
  merged.compact
end

# Examples:

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
