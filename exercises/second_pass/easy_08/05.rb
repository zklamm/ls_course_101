# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards
# as it does backwards. The return value should be arranged in the same sequence
# as the substrings appear in the string. Duplicate palindromes should be included
# multiple times.

# input: str
# output: list of all substrs that are palindromic
# assume: palindromes should appear in same sequence as subs list, duplicate palindromes
# can be included multiple times. Case matters. Single chars are not palindromes
# You may (and should) use the substrings method you wrote in the previous exercise.
# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.
# logic: call substrings on str. Select subs that meet criteria- sub == sub.reverse &&
# sub.size > 1

def substrings_at_start(str)
  subs = []
  str.size.times { |i| subs << str[0..i] }
  subs
end

def substrings(str)
  subs = []
  str.size.times { |i| subs << substrings_at_start(str[i..-1]) }
  subs.flatten
end

def palindromes(str)
  substrings(str).select { |sub| sub == sub.reverse && sub.size > 1 }
end

# Examples:

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
