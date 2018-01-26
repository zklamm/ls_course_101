# Sort an array of passed in values using merge sort. You can assume that this array
# may contain only one type of data. And that data may be either all numbers or all strings.

# Merge sort is a recursive sorting algorithm that works by breaking down the array
# elements into nested sub-arrays, then recombining those nested sub-arrays in sorted
# order. It is best shown by example. For instance, let's merge sort the array [9,5,7,1].
# Breaking this down into nested sub-arrays, we get:

# [9, 5, 7, 1] ->
# [[9, 5], [7, 1]] ->
# [[[9], [5]], [[7], [1]]]
# We then work our way back to a flat array by merging each pair of nested sub-arrays:

# [[[9], [5]], [[7], [1]]] ->
# [[5, 9], [1, 7]] ->
# [1, 5, 7, 9]

# input: ary
# output: sorted ary using merge sort per above
# assume: input will be all numbers or all strings
# logic: break input into two subarys. first sub will be from ary[0..(ary.size / 2)]
#       if one of the halves is only one element, return that element

require 'pry'
def merge(ary1, ary2)
  merged = []
  i1 = 0
  i2 = 0
  binding.pry
  until i1 >= ary1.size && i2 >= ary2.size
    case ary1[i1] <=> ary2[i2]
    when -1
      merged << ary1[i1]
      i1 += 1
    when 1
      merged << ary2[i2]
      i2 += 1
    else
      merged << ary1[i1]
      merged << ary2[i2]
      i1 += 1
      i2 += 1
    end
  end
  merged.compact
end

def merge_sort(ary)
  return ary if ary.size == 1
  half = ary.size / 2
  sub1 = merge_sort(ary[0...half])
  sub2 = merge_sort(ary[half...ary.size])
  merge(sub1, sub2)
end

# Examples:

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
%w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
[1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
