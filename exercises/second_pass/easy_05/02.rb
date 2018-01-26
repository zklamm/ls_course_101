# The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight. If the number of
# minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.

# Disregard Daylight Savings and Standard Time and other complications.

# input: any int
# output: str in format (hh:mm)
# assume: cannot use Ruby Time or Date, assume no DST etc
# logic: separate hours and minutes, taking into account pos or neg... and format

MIN_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(int)
  hours, mins = int.divmod(MIN_PER_HOUR)
  hours %= HOURS_PER_DAY
  hours += HOURS_PER_DAY if hours < 0
  format("%02d:%02d", hours, mins)
end

# Examples:

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
