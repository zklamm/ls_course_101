def staggered_case(str)
  stagger = str.chars.map.with_index do |char, i|
    i.odd? ? char.downcase : char.upcase
  end
  stagger.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
