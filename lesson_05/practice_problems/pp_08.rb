VOWELS = 'aeiou'

hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}


hsh.each_value do |words|
  words.each do |word|
    word.chars.each do |char|
      puts char if VOWELS.include?(char)
    end
  end
end
