def palindrome?(str)
  str = str.downcase.delete('^0-9a-z')
  str == str.reverse
end

p palindrome?('madam')
p palindrome?('Madam')
p palindrome?('Madam, I\'m Adam')
p palindrome?('hello')
