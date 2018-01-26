# Write a method that takes two arguments: the first is the starting number, and the
# second is the ending number. Print out all numbers between the two numbers,
# except if a number is divisible by 3, print "Fizz", if a number is divisible by 5,
# print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# input: 2 ints, first is starting num, second is ending num
# output: print numbers in input range, but if num % 3 == 0 print "Fizz", if num % 5 == 0
# print "Buzz", if num % 3 == 0 && num % 5 == 0 print "FizzBuzz"
# logic: iterate thru range, print num, or if num % 3 == 0 print "Fizz", if num % 5 == 0
# print "Buzz", if num % 3 == 0 && num % 5 == 0 print "FizzBuzz" (need to look at this last
# condition first)

def fizzbuzz_value(num)
  case
  when num % 15 == 0 then 'FizzBuzz'
  when num % 5 == 0  then 'Buzz'
  when num % 3 == 0  then 'Fizz'
  else                    num
  end
end

def fizzbuzz(start, stop)
  sentence = []
  (start..stop).each do |num|
    sentence << fizzbuzz_value(num)
  end
  puts sentence.join(', ')
end

# Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
