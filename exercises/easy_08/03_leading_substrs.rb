def substrings_at_start(str)
  current_char = ''
  str.chars.each_with_object([]) do |char, subs|
    current_char += char
    subs << current_char
  end
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
