# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# input: str
# output: bool, true if all paren are properly balanced
# logic: iterate thru chars of str, if '(' add 1 to balance, if ')', subtract 1 from balance
#       return false if balance ever reaches < 0, otherwise true

def balanced?(str)
  balance = 0
  str.each_char do |char|
    balance += 1 if char == '('
    balance -= 1 if char == ')'
    return false if balance < 0
  end
  balance.zero?
end

# Examples:

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('())(()')
# Note that balanced pairs must each start with a (, not a ).
