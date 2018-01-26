# Write a method that takes a string, and then returns a hash that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters,
# one the number of characters that are uppercase letters, and one the number of
# characters that are neither.

# input: str
# output: hash {lowercase letters: count, uppercase: count, neither: count}
# assume: spaces are chars that fall into neither
# logic: iterate thru str, looking at each char, add char to counts appropriately
#         to determine the category... have to rule out numbers first
#         char.to_i.to_s == char returns true for a number, false otherwise

def letter_case_count(str)
  counts = {lowercase: 0, uppercase: 0, neither: 0}
  str.each_char do |char|
    if char.downcase == char.upcase
      counts[:neither] += 1
    elsif char.downcase == char
      counts[:lowercase] += 1
    else
      counts[:uppercase] += 1
    end
  end
  counts
end

# Examples

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
