# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

# Example:

# repeat('Hello', 3)

# Output:

# Hello
# Hello
# Hello

# input: string, positive integer
# output: print string iteger times
# assume: integer is pos
# example: see above
# logic: print string integer times

def repeat(str, int)
  int.times { puts str }
end

repeat('Hello', 3)
