# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value;
# they just don't count when toggling the desired case.

# input: str
# output: new str with every other letter capitalized, others lowercase
# assume: non letters don't count when switching
# logic: map thru str, looking at each char...if char.downcase == char.upcase, add char
# and don't toggle upper variable, elsif upper is true, char.upcase and toggle upper, else
# char.downcase and toggle upper. Join new string

def staggered_case(str)
  upper = true
  new_str = str.chars.map do |char|
    if char.downcase == char.upcase
      char
    elsif upper
      upper = !upper
      char.upcase
    else
      upper = !upper
      char.downcase
    end
  end
  new_str.join
end

# Example:

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
