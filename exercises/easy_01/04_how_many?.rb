vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(arr)
  until arr.empty?
    occurrences = arr.select { |elem| elem == arr.first }
    puts "#{occurrences.first}: #{occurrences.length}"
    arr.delete(arr.first)
  end
end

count_occurrences(vehicles)