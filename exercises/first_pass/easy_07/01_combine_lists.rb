def interleave(ary1, ary2)
  ary = []
  ary.push(ary1.shift, ary2.shift) until (ary1 + ary2).empty?
  ary
end

# further exploration

# def interleave(ary1, ary2)
#   ary1.zip(ary2).flatten
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
