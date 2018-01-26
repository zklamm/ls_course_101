# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the elements
# taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# input: two arys
# output: new array, containing all elements from inputs arrays in alternating order
# assume: inputs are non-empty and same size
# logic: ary.size.times { |i| new << both arys[i] } new

# def interleave(ary1, ary2)
#   new_ary = []
#   ary1.size.times do |i|
#     new_ary << ary1[i]
#     new_ary << ary2[i]
#   end
#   new_ary
# end

def interleave(ary1, ary2)
  ary1.zip(ary2).flatten
end

# Example:

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
