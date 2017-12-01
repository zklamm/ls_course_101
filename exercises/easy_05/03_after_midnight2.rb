HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours = time[0..1].to_i
  mins = time[3..4].to_i
  (hours * MINUTES_PER_HOUR + mins) % MINUTES_PER_DAY
end

def before_midnight(time)
  mins = MINUTES_PER_DAY - after_midnight(time)
  mins = 0 if mins == MINUTES_PER_DAY
  mins
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
