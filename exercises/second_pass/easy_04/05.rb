# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For instance,
# if the supplied number is 20, the result should be 98
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# input: int
# output: sum of multiples of 3 or 5 from 1 to input
# assume: input is greater than 1
# logic: iterate thru (1..input), if multiple of 3 or 5 add to sum

def multisum(int)
  sum = 0
  1.upto(int) do |i|
    sum += i if i % 3 == 0 || i % 5 == 0
  end
  sum
end

# Examples

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168