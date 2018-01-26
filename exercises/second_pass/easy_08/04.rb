# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on. Since multiple substrings
# will occur at each position, the substrings at a given position should be returned
# in order from shortest to longest.

# input: str
# output: ary of all substrings of input
# assume: all subsrings at lower indeces first, and from shortest to longest
# You may (and should) use the substrings_at_start method you wrote in the previous exercise
# logic: call substrings_at_start on each char of str and store into subs

def substrings_at_start(str)
  subs = []
  str.size.times { |i| subs << str[0..i] }
  subs
end

def substrings(str)
  subs = []
  str.size.times { |i| subs << substrings_at_start(str[i..-1]) }
  subs.flatten
end

# Examples:

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
