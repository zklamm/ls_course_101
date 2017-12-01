SEC_PER_DAY = 60 * 60 * 24

def friday_13th(year)
  days = [Time.new(year)]
  0.upto(365) do |i|
    days << days[i] + SEC_PER_DAY
  end

  unlucky = []
  days.each do |day|
    unlucky << day if day.friday? && day.day == 13
  end

  unlucky.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
