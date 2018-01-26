def word_sizes(words)
  counts = {}
  words.split.each do |word|
    word.delete!('^a-zA-Z')
    size = word.size
    !counts[size].nil? ? counts[size] += 1 : counts[size] = 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
