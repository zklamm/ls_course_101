# not supposed to mutate original arrays...
# def merge(list1, list2)
#   merged = []
#   until list1.empty? || list2.empty?
#     list1.first <= list2.first ? merged << list1.shift : merged << list2.shift
#   end
#   merged + (list1.empty? ? list2 : list1)
# end

def merge(ary1, ary2)
  idx2 = 0
  merged = []

  ary1.each do |val|
    while idx2 < ary2.size && ary2[idx2] <= val
      merged << ary2[idx2]
      idx2 += 1
    end
    merged << val
  end

  merged.concat(ary2[idx2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
