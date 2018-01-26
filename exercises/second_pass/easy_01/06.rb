# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed.
# Each string will consist of only letters and spaces. Spaces should be included
# only when more than one word is present.

# input: str that has at least one word
# output: same string, but words that have at least 5 letters will be reversed
# assume: only letters and spaces
# ex: given

def reverse_words(str)
  updated = str.split.map do |word|
    word.length > 4 ? word.reverse : word
  end
  updated.join(' ')
end


# Examples:

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS
