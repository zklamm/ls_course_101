# Write a method that takes a sentence string as input, and returns the same string
# with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six',
# 'seven', 'eight', 'nine' converted to a string of digits.

# input: str
# output: str with any english nums returned as ints
# logic: create a constant called NUMS that contains english numbers.
#         iterate thru each word in str using map, if NUMS.include?(word), word =
#         NUMS.index_at(word)

def word_to_digit(str)
  had_period = []
  sentence = str.split.map do |word|
    if word[-1] == '.'
      word = word[0..-2] 
      had_period << str.index(word)
    end
    NUMS.include?(word) ? NUMS.index(word) : word
  end
  sentence = sentence.map do |word|
    had_period.include?(word) ? word + '.' : word
  end
  sentence.join(' ')
end

NUMS = %w[zero one two three four five six seven eight nine]

# Example:

p word_to_digit('Please call me at five five five one two three four. Thanks.') #==
              'Please call me at 5 5 5 1 2 3 4. Thanks.'
