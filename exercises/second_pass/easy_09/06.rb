# Write a method that takes a string as an argument, and returns an Array that
# contains every word from the string, to which you have appended a space and
# the word length.

# input: str
# output: ary that has every word from input that also has a space and word size
# You may assume that words in the string are separated by exactly one space,
# and that any substring of non-space characters is a word.
# logic: split str, map thru and add space and word count

def word_lengths(str)
  str.split.map { |word| "#{word} #{word.size}" }
end

# Examples

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
