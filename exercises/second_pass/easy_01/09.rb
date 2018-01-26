# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits.

# For a challenge, try writing this without any basic looping constructs
# (while, until, loop, and each).

# in: pos int
# out: sum of digits of in
# assume: accept the challenge, so no basic looping

def sum(int)
  int.digits.sum
end

# Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# The tests above should print true.
