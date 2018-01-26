# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle
# in degrees, minutes and seconds. You should use a degree symbol (°) to
# represent degrees, a single quote (') to represent minutes, and a double
# quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# input: float
# output: str- dd°mm'ss"
# assume: Note: your results may differ slightly depending on how you round values,
# but should be within a second or two of the results shown.
#         You should use two digit numbers with leading zeros when formatting the
# minutes and seconds, e.g., 321°03'07".
# logic: factor float into d, m, & s...format

DEGREE = "\xC2\xB0"
MIN_PER_DEG = 60
SEC_PER_MIN = 60
SEC_PER_DEG = MIN_PER_DEG * SEC_PER_MIN

def dms(angle)
  tot_sec = (angle * SEC_PER_DEG).round
  deg, rem = tot_sec.divmod(SEC_PER_DEG)
  min, sec = rem.divmod(SEC_PER_MIN)
  format(%(#{deg}#{DEGREE}%02d'%02d"), min, sec)
end

# Examples:

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


