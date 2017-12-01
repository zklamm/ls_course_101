# require 'pry'

# My solution:

# def balanced?(str)
#   balance = [0, 0]
#   chs = str.chars
#   until !chs.include?('(') && !chs.include?(')')
#     if chs.include?('(') && chs[chs.index('(')..-1].include?(')')
#       balance[0] += 1
#       balance[1] += 1
#       chs.delete_at(chs.index('('))
#       chs.delete_at(chs.index(')'))
#     else
#       if chs.include?('(')
#         chs.delete_at(chs.index('('))
#         balance[0] += 1
#       end
#       if chs.include?(')')
#         chs.delete_at(chs.index(')'))
#         balance[1] -= 1
#       end
#     end
#   end
#   balance.uniq.size == 1
# end

# LS:

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end

# Another student:

def balanced?(str)
  stack = []
  str.chars.each do |char|
    if char == ')' && stack.empty?
      return false
    elsif char == '('
      stack << char
    elsif stack.include?('(') && char == ')'
      stack.pop
    end
  end
  stack.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('())(()') == false
