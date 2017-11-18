def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam') # true
p palindrome?('Madam') # false (case matters)
p palindrome?("madam i'm adam") # false (all characters matter)
p palindrome?('356653') # true

def palindrome_arr?(arr)
  arr == arr.reverse
end

p palindrome_arr?([1, 2, 3]) # false
p palindrome_arr?([1, 2, 1]) # true

def palindrome_arr_str?(obj)
  obj == obj.reverse
end

p palindrome_arr_str?([1, 2, 3]) # false
p palindrome_arr_str?([1, 2, 1]) # true
p palindrome_arr_str?('madam') # true
p palindrome_arr_str?('Madam') # false
