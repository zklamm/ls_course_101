def reverse(ary)
  new_ary = []
  idx = 0
  until idx == ary.size
    new_ary[idx] = ary[-idx.next]
    idx += 1
  end
  new_ary
end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]    # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
