def featured(num)
  return 'Not possible' if num >= 9_876_543_210
  num += 7 - num % 7 # makes num a multiple of 7
  until num.digits.uniq.size == num.digits.size && num.odd?
    num += 7
  end
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> "Not possible"
