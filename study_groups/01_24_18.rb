# Write a method that takes a sentence string as input, and returns the same string
# with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six',
# 'seven', 'eight', 'nine' converted to a string of digits.

# input: str
# output: str with english nums converted to ints
# assume: if word ends in a period, delete period, add back later
# logic: represent eng_num as a constant
# split sent into words, iterate thru words, if constant includes word,
# return ENG_NUMS.index(word), else return word

# word = word[0..-2] if word[-1] == '.'

ENG_NUMS = %w[zero one two three four five six seven eight nine]

def word_to_digit(sentence)
period = []
  updated = sentence.split.map do |word|
    
    if ENG_NUMS.include?(word)
      ENG_NUMS.index(word)
    elsif word[-1] == '.' && ENG_NUMS.include?(word[0..-2])
      word = word[0..-2]
      ENG_NUMS.index(word).to_s + '.'
    else
      word
    end
  end
  updated.join(' ')
end

# Example:


p word_to_digit('Please call me at five five five one two three four. Thanks.') ==
                'Please call me at 5 5 5 1 2 3 4. Thanks.'
                