# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in
# order from shortest to longest substring.

# input: str
# output: all substrs that start at idx 0, from shortest to longest
# logic: grab str[0..idx] str.size.times and store into subs

def substrings_at_start(str)
  subs = []
  str.size.times { |i| subs << str[0..i] }
  subs
end

# Examples:

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
