# My first pass...recursion went too deep...

# def fibonacci(num)
#   num < 2 ? num : fibonacci(num - 1) + fibonacci(num - 2)
# end

# def find_fibonacci_index_by_length(digits)
#   counter = 0
#   counter += 1 until fibonacci(counter).to_s.size >= digits
#   counter
# end

# LS solution...
# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits

#     first = second
#     second = fibonacci
#   end

#   index
# end

# Taylor Peat's solution is my favorite...
def find_fibonacci_index_by_length(digits)
  target_number = 10**(digits - 1)
  recent_nums = [1, 1]
  idx = 2

  while recent_nums[1] < target_number
    num = recent_nums.reduce(:+)
    recent_nums.push(num).shift
    idx += 1
  end

  idx
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
