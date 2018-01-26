# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

# input: str
# output: bool...true if all letters are uppercase
# assume: ignore nonletters
# logic: iterate thru str, looking at each char. to ignore nonletters, see if
# char.upcase == char.downcase, then if char == char.downcase, return false. else true

def uppercase?(str)
  str == str.upcase
end

# Examples:

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
