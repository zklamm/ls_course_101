CONSONANTS = 'bcdfghjklmnpqrstvwxyz'

def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

def double_consonants(str)
  doubled = str.chars.map do |char|
    CONSONANTS.include?(char.downcase) ? repeater(char) : char
  end
  doubled.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
