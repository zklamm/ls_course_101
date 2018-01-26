# Write another method that returns true if the string passed as an argument
# is a palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method you wrote
# in the previous exercise.

# input: str
# out: bool
# assume: case insensitive, punc doesn't matter
# logic: first, clean up str for use in palindrome? method?

def real_palindrome?(str)
  str = str.downcase.delete('^0-9a-z')
  str == str.reverse
end

# Examples:

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
