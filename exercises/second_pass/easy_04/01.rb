# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter string,
# the longer string, and the shorter string once again. You may assume that the strings
# are of different lengths.

# input: two strings
# output: input strings conacat (short, long, short) to one string
# assume: inputs are different lengths
# logic: compare lengths, store in varibles and concat

def short_long_short(str1, str2)
  short = ''
  long = ''
  if str1.length > str2.length
    short = str2
    long = str1
  else
    short = str1
    long = str2
  end
  short + long + short
end

# Examples:

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
