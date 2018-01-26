MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(total_minutes)
  delta_minutes = total_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%.2d:%.2d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# Modulo
# -1437 - (1440 * (-1437 / 1440).floor)
# -1437 - (1440 * (-0.99.floor)
# -1437 - (1440 * -1)
# -1437 + 1440
# 3

# Remainder
# -1437 - (1440 * (-1437 / 1440).truncate)
# -1437 - (1440 * (-0.99.truncate)
# -1437 - (1440 * 0)
# -1437
