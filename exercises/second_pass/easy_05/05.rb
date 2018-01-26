# Given a string that consists of some words and an assortment of non-alphabetic
# characters, write a method that returns that string with all of the non-alphabetic
# characters replaced by spaces. If one or more non-alphabetic characters occur in
# a row, you should only have one space in the result (the result should never
# have consecutive spaces).

# input: str
# output: clean str (nothing but alphabetic chars), no consecutive spaces
# logic: to try without regex, I'm gonna look at #delete

def cleanup(str)
  clean = str.chars.map do |char|
    ('a'..'z').include?(char) ? char : ' '
  end
  clean.join.squeeze(' ')
end

# Examples:

p cleanup("---what's my +*& line?") == ' what s my line '