# def transpose(ary)
#   trans = []
#   ary.each do |sub_ary|
#     sub_ary.each_index do |idx|
#       if sub_ary.class == Array
#         row = 0
#         col = []
#         until row == ary.size
#           col << ary[row][idx]
#           row += 1
#         end
#         trans << col
#       else
#         ary[0].each do |val|
#           trans << [val]
#         end
#       end
#     end
#   end
#   trans.uniq
# end

# LS
# def transpose(matrix)
#   result = []
#   number_of_rows = matrix.size
#   number_of_columns = matrix.first.size
#   (0...number_of_columns).each do |column_index|
#     new_row = (0...number_of_rows).map do |row_index|
#       matrix[row_index][column_index]
#     end
#     result << new_row
#   end
#   result
# end

# Another Student
def transpose(ary)
  new_ary = []
  ary.each do |subary|
    subary.each_with_index do |num, index|
      new_ary[index].nil? ? new_ary[index] = [num] : new_ary[index] << num
    end
  end
  new_ary
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
