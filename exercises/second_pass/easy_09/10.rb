# Write a method which takes a grocery list (array) of fruits with quantities and
# converts it into an array of the correct number of each fruit.

# input: ary (grocery list that has items and corresponding quantities)
# output: ary that has each fruit listed out
# logic: each subarray, add sub[0] sub[1] times

def buy_fruit(list)
  quantities = []
  list.each { |item| item[1].times { quantities << item[0] } }
  quantities
end

# Example:

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
