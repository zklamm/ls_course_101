# LOWER = 'a'..'z'
# UPPER = 'A'..'Z'

# def swapcase(str)
#   swap = ''
#   str.each_char do |char|
#     if LOWER.include?(char)
#       swap << char.upcase!
#     elsif UPPER.include?(char)
#       swap << char.downcase!
#     else
#       swap << char
#     end
#   end
#   swap
# end

# neat solution from another student...

def swapcase(str)
  str.chars.map { |c| c == c.upcase ? c.downcase : c.upcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
