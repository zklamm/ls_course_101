=begin
Given 2 strings, your job is to find out if there is a substring
that appears in both strings. You will return true if you find a
substring that appears in both strings, or false if you do not.
We only care about substrings that are longer than one letter long.
=end

# input: 2 strs
# output: bool
# assume: case insensitive, substrings are at least one char
# logic: define substring helper method that returns all possible substrings...two loops
# iterate thru one of the substrings sets and see if any element is included in the other
# substring set

def substring(str)
  subs = []
  start_idx = 0
  0.upto(str.length - 2) do |i1|
    1.upto(str.length - 1) do |i2|
      subs << str[i1..i2] if i2 > i1
    end
  end
  subs
end

def substring_test(str1, str2)
  subs1 = substring(str1)
  subs2 = substring(str2)
  subs1.each do |sub|
    return true if subs2.include?(sub.downcase)
  end
  false
end

# p substring_test('Something', 'Fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true



=begin
  Given an array of numbers find if any 3 numbers inside of the array
  can be multiplied to get the maximum number in the array.
  If the number is used once it can't be used again. If there are two same numbers
  then that number can be used 2 times.
=end

# input: ary of numbers
# output: bool
# assume: each elem can only be used once
# logic: find all possible 3 way combos of the input array and see if equal to max of input
#         call #max to find max value elem
#         to find all 3 way combos, lock first element, lock sec, 

def find_three_num_combos(nums)
  combos = []
  0.upto(nums.size - 3) do |i1|
    1.upto(nums.size - 2) do |i2|
      2.upto(nums.size - 1) do |i3|
        combos << [nums[i1], nums[i2], nums[i3]] if i3 > i2 && i2 > i1
      end
    end
  end
  combos
end

def mult_of_three_nums(nums)
  combos = find_three_num_combos(nums)
  combos.any? do |combo|
    combo.reduce(:*) == nums.max
  end
end

p mult_of_three_nums([1,2,3,4,5,6]) == true
p mult_of_three_nums([3, 8, 0, 9, 4, 2, 7]) == false
p mult_of_three_nums([5, 3, 7, 9, 2, 51, 90]) == true
p mult_of_three_nums([1, 1, 5, 7, 987, 3, 2]) == true
p mult_of_three_nums([2, 5, 8, 11, 32, 2]) == true
p mult_of_three_nums([13, 3, 11, 56, 79, 2]) == false

# def mult_of_three_nums(array)
#   arr.combination(3).to_a.each do |subarr|
#     return true if subarr.reduce(:*) == arr.max
#   end
# end
