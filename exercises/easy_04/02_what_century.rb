def century(year)
  century = (year + 99) / 100
  "#{century}#{ordinal(century)}"
end

def ordinal(century)
  tens_digit = century % 100 / 10
  last_digit = century % 10
  return 'th' if tens_digit == 1

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
