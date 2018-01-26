# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word is swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces

# input: str of words
# output: same str, but first and last letter of every word is swapped
# assume: at least one letter words, at least one word, only words and spaces
# logic: iterate thru words, use parallel index assignment

def swap(words)
  swapped = []
  words.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
    swapped << word
  end
  swapped.join(' ')
end

# Examples:

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
