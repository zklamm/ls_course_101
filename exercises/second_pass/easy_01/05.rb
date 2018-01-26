# Write a method that takes one argument, a string, and returns the same string
# with the words in reverse order.

# input: string of words
# output: string with words in reverse order
# assume: no puncuation
# ex: given
# logic: store words into an array, reverse array, join to new string

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

# Examples:

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.
