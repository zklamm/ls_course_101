def swap(string)
  new_words = []
  string.split.each do |word|
    characters = word.chars
    first, = characters.shift
    last = characters.pop
    new_words << characters.unshift(last).push(first).join
  end
  new_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
