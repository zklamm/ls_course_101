# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns
# the transpose of the original matrix. Note that there is a Array#transpose
# method that does this -- you may not use it for this exercise.
# You also are not allowed to use the Matrix class from the standard library.
# Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix
# and leave the original matrix unchanged.

# input: 3x3 matrix
# output: transposed matrix
# assume: cannot use built in transpose method or Matrix class. Also, do not mutate input
# logic: the first elements of each subary (row) need to be the new row, then the second
# elements, then the third...so, each subary, assign the value at idx i to new_array

def transpose(matrix)
  column = []
  3.times do |i|
    matrix.each { |row| column << row[i] }
  end
  [column[0..2], column[3..5], column[6..8]]
end

# Examples

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]