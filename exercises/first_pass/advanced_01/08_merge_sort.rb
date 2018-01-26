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

def merge_sort(ary)
  return ary if ary.size == 1

  sub1 = ary[0...ary.size / 2]
  sub2 = ary[ary.size / 2...ary.size]

  sub1 = merge_sort(sub1)
  sub2 = merge_sort(sub2)
  merge(sub1, sub2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w[Sue Pete Alice Tyler Rachel Kim Bonnie Arnold]) == %w[Alice Arnold Bonnie Kim Pete Rachel Sue Tyler]
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
