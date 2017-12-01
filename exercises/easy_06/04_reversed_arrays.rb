def reverse!(ary)
  idx = 0
  until idx == ary.size / 2
    ary[idx], ary[-idx.next] = ary[-idx.next], ary[idx]
    idx += 1
  end
  ary
end

list = [1, 2, 3, 4]
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
