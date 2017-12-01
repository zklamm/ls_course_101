arr = ['10', '11', '9', '7', '8']

arr.map(&:to_i).sort.map(&:to_s).reverse

arr.sort do |a, b|
  b.to_i <=> a.to_i
end
