# As seen in the previous exercise, the time of day can be represented as the number
# of minutes before or after midnight. If the number of minutes is positive, the
# time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.
# Disregard Daylight Savings and Standard Time and other irregularities.

# input: str in hh:mm format
# output: two ints (one from each method): min before & after midnight, respectively
# assume: no DST, outputs will be in range 0..1439
# logic: find total minutes for after mid, subtract from 1440 for before mid

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(clock)
  hours = clock[0..1].to_i
  minutes = clock[3..4].to_i + hours * MINUTES_PER_HOUR
  minutes % MINUTES_PER_DAY
end

def before_midnight(clock)
  (MINUTES_PER_DAY - after_midnight(clock)) % MINUTES_PER_DAY
end

# Examples:

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
