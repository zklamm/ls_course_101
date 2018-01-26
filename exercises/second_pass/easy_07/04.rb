# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be unchanged.

# input: str
# output: new str with char case swapped
# You may not use String#swapcase; write your own version of this method.
# logic: iterate thru str, looking at each char. If char.downcase == char return char.upcase
# else return char.downcase

# Example:

def swapcase(str)
  new_str = str.chars.map do |char|
    char.downcase == char ? char.upcase : char.downcase
  end
  new_str.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
