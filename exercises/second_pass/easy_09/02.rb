# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example, 44, 3333,
# 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned as-is.

# input: num
# output: num * 2, unless input is a double num per above
# logic: write helper method double? that returns a bool. num_of_digs = num.digits.size
# use divmod on num with 10**(num_of_digs / 2) as argument. If left == right, return true

# In twice method call bool, if true then return num, else return num * 2

def double?(num)
  power = num.digits.size / 2
  left, right = num.divmod(10**power)
  left == right
end

def twice(num)
  double?(num) ? num : num * 2
end

# Examples:

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
