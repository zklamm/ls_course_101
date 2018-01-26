# Write a method that takes a single String argument and returns a new string that
# contains the original value of the argument with the first character of every
# word capitalized and all other letters lowercase.

# input: str
# output: new str, first letter of each word capitalize, every other char lowercase
# You may assume that words are any sequence of non-blank characters.
# logic: split str to words, iterate thru each word, downcase.capitalize, store into new_ary

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

# Examples

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
