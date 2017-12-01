DIGITS = %w(zero one two three four five six seven eight nine)

# This program does not meet all requirements.
# The final '.' is missing in the return string.
# I've yet to learn regex, which is what I really need for this

def word_to_digit(sentence)
  updated = sentence.split.map do |word|
    modified = false
    if word.end_with?('.')
      word = word[0..-2]
      modified = !modified
    end
    if DIGITS.include?(word)
      word = DIGITS.index(word).to_s
      modified ? word += '.' : word
    else
      word
    end
  end
  updated.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
#== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
