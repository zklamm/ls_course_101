# Write a method that takes a string argument and returns a new string
# that contains the value of the original string with all consecutive
# duplicate characters collapsed into a single character. You may not use
# String#squeeze or String#squeeze!.

# input: str
# output: same string, but duplicate consectives removed
# assume: cannot use #squeeze(!)
# logic: iterate thru chars, if char1 == char2, go to next

def crunch(str)
  crunched = ''
  str.chars.each do |char|
    crunched << char unless char == crunched[-1]
  end
  crunched
end

# Examples:

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''