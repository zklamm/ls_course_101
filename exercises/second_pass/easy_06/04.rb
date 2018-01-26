# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# input: ary
# output: reversed ary
# assume: use mutation...cannot use reverse(!)
# logic: use pop/push/shift/unshift

def reverse!(ary)
  (ary.size / 2).times do |i|
    ary[i], ary[-(i + 1)] = ary[-(i + 1)], ary[i]
  end
  ary
end

# Examples:

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []