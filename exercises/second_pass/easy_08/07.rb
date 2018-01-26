# Write a method that takes a string, and returns a new string in which every
# character is doubled.

# input: str
# output: str with every char doubled
# logic: split str into chars, map thru chars, char = char * 2, join return value

def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

# Examples:

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
