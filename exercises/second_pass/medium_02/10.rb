# Write a method that computes the difference between the square of the sum of the
# first n positive integers and the sum of the squares of the first n positive integers.

# input: int, called n
# output: difference between (square of sum of n ints) & (sum of squares of n ints)
# assume: all ints upto n are pos
# logic: def sq of sum: (1..n).to_a.sum**2
#       def sum of sqs: (1..n).to_a.map { |num| num**2 }.sum
#       take the difference

def sum_square_difference(n)
  sq_of_sum = (1..n).sum**2
  sum_of_sqs = (1..n).map { |i| i**2 }.sum
  sq_of_sum - sum_of_sqs
end

# Examples:

p sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
