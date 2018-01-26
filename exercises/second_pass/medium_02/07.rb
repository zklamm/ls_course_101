# Write a method that returns the number of Friday the 13ths in the year given by
# an argument. You may assume that the year is greater than 1752 (when the United
# Kingdom adopted the modern Gregorian Calendar) and that it will remain in use
# for the foreseeable future.

# input: year (int)
# output: int, number of friday the 13ths
# assume: year > 1752
# logic: require Date class

require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

# Examples:

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
