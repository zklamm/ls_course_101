# Write a method that will take a short line of text, and print it within a box.

# input: str
# output: print str within a box (per design below)
# You may assume that the input will always fit in your terminal window.
# logic: use length of string for padding of box

def pattern(str, char1, char2)
  puts char1 + char2 * (str.size + 2) + char1
end

def print_in_box(str)
  pattern(str, '+', '-')
  pattern(str, '|', ' ')
  puts '| ' + str + ' |'
  pattern(str, '|', ' ')
  pattern(str, '+', '-')
end

# Example:

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

