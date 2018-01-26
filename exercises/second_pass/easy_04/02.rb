# Write a method that takes a year as input and returns the century. The return value
# should be a string that begins with the century number, and ends with st, nd, rd, or th
# as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise
# the 20th century.

# input: year
# output: century as string (include ordinal)
# assume: new cents start at 01
# logic: create a method to determine century, and one to determine ordinal

def ordinal(cent)
  return "#{cent}th" if (11..13).include?(cent % 100)
  case cent % 10
  when 1 then "#{cent}st"
  when 2 then "#{cent}nd"
  when 3 then "#{cent}rd"
  else        "#{cent}th"
  end
end

def century(year)
  cent = (year + 99) / 100
  ordinal(cent)
end

# Examples:

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
