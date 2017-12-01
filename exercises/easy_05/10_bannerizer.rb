def print_in_box(str)
  spacing = str.size + 2
  puts '+' + '-' * spacing + '+'
  puts '|' + ' ' * spacing + '|'
  puts '|' + str.center(spacing) + '|'
  puts '|' + ' ' * spacing + '|'
  puts '+' + '-' * spacing + '+'
end

print_in_box('Hello')

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
