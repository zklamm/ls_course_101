# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

# input: int
# output: bool
# logic: convert int to str and compare to str.reverse

def palindromic_number?(int)
  str = int.to_s
  str == str.reverse
end

# Examples:

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
