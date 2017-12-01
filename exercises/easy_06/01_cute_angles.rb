DEGREE = "\xC2\xB0"
MIN_PER_DEG = 60
SEC_PER_MIN = 60

def dms(angle)
  min = (angle - angle.floor) * MIN_PER_DEG
  sec = (min - min.floor) * SEC_PER_MIN
  "#{angle.floor}#{DEGREE}" + format('%.2d\'%.2d"', min, sec)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
