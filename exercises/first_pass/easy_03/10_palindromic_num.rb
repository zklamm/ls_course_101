def palindromic_num?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_num?(121)
p palindromic_num?(123)
