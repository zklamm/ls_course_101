# In the easy exercises, we worked on a problem where we had to count the number
# of uppercase and lowercase characters, as well as characters that were neither
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are lowercase
# letters, one the percentage of characters that are uppercase letters, and one the
# percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# input: str
# output: hsh with 3 entries: lower, upper, neither, with corresponding %
# assume: input will always have at least one char
# logic: iterate thru chars, if included in 'A..Z', add one to upcase, elsif included 'a'..'z'
# add one to lowercase, else add one to neither. For each value, divide count by str.size

def letter_percentages(str)
  avg = {}
  avg[:lowercase] = str.count('a-z')
  avg[:uppercase] = str.count('A-Z')
  avg[:neither] = str.count('^a-zA-Z')
  avg.each do |letter_case, count|
    avg[letter_case] = count * 100 / str.size.to_f
  end
  avg
end

# Examples

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
