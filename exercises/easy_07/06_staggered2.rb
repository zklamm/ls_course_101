ALPHA = 'A'..'z'

def staggered_case(str)
  upper = true
  stagger = str.chars.map do |char|
    if !ALPHA.include?(char)
      char
    elsif upper
      upper = false
      char.upcase
    else
      upper = true
      char.downcase
    end
  end
  stagger.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
