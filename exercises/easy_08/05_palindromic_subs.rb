def substrings_at_start(str)
  current_char = ''
  str.chars.each_with_object([]) do |char, subs|
    current_char += char
    subs << current_char
  end
end

def substrings(str)
  subs = []
  str.size.times { |i| subs << substrings_at_start(str[i..-1]) }
  subs.flatten
end

def palindromes(str)
  substrings(str).select do |sub|
    sub.size > 1 && sub == sub.reverse
  end
end

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
