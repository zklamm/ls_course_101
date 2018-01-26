# Write a method that takes a non-empty string argument, and returns the
# middle character or characters of the argument. If the argument has an
# odd length, you should return exactly one character. If the argument has
# an even length, you should return exactly two characters.

# input: str (non-empty)
# output: middle char(s) of input...if odd length one char, if even two
# logic: new variable called half = str.size / 2
# Remember that 5 / 2 == 2...so we want to take str[half] if str.size.odd?
# else take str[(half - 1)..half]

def center_of(str)
  half = str.size / 2
  str.size.odd? ? str[half] : str[(half - 1)..half]
end

# Examples:

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
