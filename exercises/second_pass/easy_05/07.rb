# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

# input: str of words
# output: hash of counts
# assume: excludes puncuation
# logic: same as before just tweak method to clean up words

def cleanup(words)
  words.delete('^a-zA-Z ')
end

def word_sizes(words)
  words = cleanup(words)
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

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}