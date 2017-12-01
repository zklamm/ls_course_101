arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

even_hashes = []
arr.select do |hashes|
  hashes.each_value do |value|
    value.all? do |int|
      even_hashes << hashes if int.even?
    end
  end
end
even_hashes
