# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme
# in which every other character is capitalized, and the remaining characters
# are lowercase. Characters that are not letters should not be changed,
# but count as characters when switching between upper and lowercase.

# input: str
# output: new str where every other char is capitalized, others are lowercase
# assume: capitalization starts at idx 0, non letters (including spaces) count when switcihng
# logic: iterate thru str, looking at each char and it's idx. If idx is even, call upcase,
# else call downcase, return to new str and join back together

def staggered_case(str)
  new_str = ''
  str.chars.each_with_index do |char, idx|
    idx.even? ? new_str << char.upcase : new_str << char.downcase
  end
  new_str
end

# Example:

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
