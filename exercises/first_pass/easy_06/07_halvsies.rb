def halvsies(ary)
  ary1 = []
  ary2 = []
  until ary.empty?
    ary1.push(ary.shift).compact!
    ary2.unshift(ary.pop).compact!
  end
  [ary1, ary2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
