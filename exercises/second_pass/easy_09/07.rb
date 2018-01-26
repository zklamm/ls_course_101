# Write a method that takes a first name, a space, and a last name passed
# as a single String argument, and returns a string that contains the last name,
# a comma, a space, and the first name.

# input: one str...first name, space, last name
# output: last name, comma, space, first name
# logic: split words, reverse, join with comma

def swap_name(name)
  name.split.reverse.join(', ')
end

# Examples

p swap_name('Joe Roberts') == 'Roberts, Joe'
