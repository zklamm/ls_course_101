def transpose(ary)
  trans = []
  ary.each_index do |idx|
    row = 0
    col = []
    until row == ary.size
      col << ary[row][idx]
      row += 1
    end
    trans << col
  end
  trans
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
