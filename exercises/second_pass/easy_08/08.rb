# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation,
# and whitespace should not be doubled.

# input: str
# output: new str w/ every consonant doubled
# logic: for each char, if ('bcdfghjklmnpqrstvwxyz').include?(char) ? char * 2 : char

CONSONANTS = 'bcdfghjklmnpqrstvwxyz'

def double_consonants(str)
  new_str = str.chars.map do |char|
    CONSONANTS.include?(char.downcase) ? char * 2 : char
  end
  new_str.join
end

# Examples:

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
