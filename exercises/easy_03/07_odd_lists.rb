def oddities(arr)
  new_arr = []
  arr.map.with_index do |v, i|
    new_arr.push(v) if i.even?
  end
  new_arr
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []
