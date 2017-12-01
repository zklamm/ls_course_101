def multiply_list(ary1, ary2)
  ary = []
  ary1.size.times do |idx|
    ary << ary1[idx] * ary2[idx]
  end
  ary
end

# def multiply_list(ary1, ary2)
#   ary1.zip(ary2).map { |ary| ary.reduce(:*) }
# end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
