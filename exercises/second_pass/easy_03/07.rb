# Write a method that returns an Array that contains every other element of an Array
# that is passed in as an argument. The values in the returned list should be those
# values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# input: array
# output: new array that has every other elem of first array
# assume: start at idx 0
# logic: iterate thru array, only taking elems who have even idx

def oddities(ary)
  new_ary = []
  ary.each_with_index do |elem, idx|
    new_ary << elem if idx.even?
  end
  new_ary
end

# Examples:

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
