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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
