# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# input: string of words
# output: hash, with word size as keys, occurences as values
# assume: all non spaces count
# logic: iterate thru words, look at size, add occurences to count

def word_sizes(words)
  count = {}
  words.split.each do |word|
    if count[word.size]
      count[word.size] += 1
    else
      count[word.size] = 1
    end
  end
  count
end

# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}