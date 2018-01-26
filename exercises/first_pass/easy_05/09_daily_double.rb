def crunch(str)
  chars = str.chars
  chars.each_index do |i|
    chars[i] = nil if chars[i] == chars[i.next]
  end
  chars.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
