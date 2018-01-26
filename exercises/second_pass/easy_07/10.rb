# Write a method that returns the next to last word in the String passed to it
# as an argument.

# input: str of words
# output: second to last word
# Words are any sequence of non-blank characters.
# You may assume that the input String will always contain at least two words.
# logic: split words, iterate thru them using each_with_index. When idx == words.size - 2,
# return the word

# def penultimate(str)
#   words = str.split
#   words.each_with_index do |word, idx|
#     return word if idx == words.size - 2
#   end
# end

def penultimate(str)
  str.split[-2]
end

# Examples:

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
