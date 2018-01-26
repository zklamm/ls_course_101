# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# input: ary of strs
# output: ary of strs with no vowels
# assume: 'y' is not a vowel
# logic: iterate thru strings, delete vowels using delete & map

VOWELS = 'aeiouAEIOU'

def remove_vowels(strings)
  strings.map { |string| string.delete(VOWELS) }
end


# Example:

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
