# Write a method that takes an Array of integers as input, multiplies all the numbers
# together, divides the result by the number of entries in the Array, and then prints
# the result rounded to 3 decimal places. Assume the array is non-empty.

# input: ary of ints
# output: print float rounded to three decimals...output is all elements multiplied together,
# divided by size of input
# assume: array is non empty
# logic: reduce array w/ * and divide by ary.size.to_f, take result and format accordingly

def show_multiplicative_average(ints)
  result = ints.reduce(:*).to_f / ints.size
  puts format('%.3f', result)
end

# Examples:

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
