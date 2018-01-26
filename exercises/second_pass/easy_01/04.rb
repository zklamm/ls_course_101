# Write a method that counts the number of occurrences of each element in a given array.

# input: array
# output: print the count of each element
# assume:
# examples: given
# logic: iterate thru array and create a hash containing elements as keys and instances
#        as a count

def count_occurrences(ary)
  count = {}
  ary.each do |elem|
    if count[elem]
      count[elem] += 1
    else
      count[elem] = 1
    end
  end
  count.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
