# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# A 90-degree rotation of a matrix produces a new matrix in which each side of the matrix
# is rotated clockwise by 90 degrees. For example, the 90-degree rotation of the matrix
# shown above is:

# 3  4  1
# 9  7  5
# 6  2  8

# A 90 degree rotation of a non-square matrix is similar. For example, the rotation of:

# 3  4  1
# 9  7  5

# is:

# 9  3
# 7  4
# 5  1

# Write a method that takes an arbitrary matrix and rotates it 90 degrees
# clockwise as shown above.

# input: arbitrary matrix
# output: rotated input by 90 deg clockwise
# assume: do not mutate input
# logic: the first element of the last row becomes the first element of the first row
#       the first element of the second to last row becomes the second elem of the first row
#       the first element of the third to last row becomes the third elem of the first row
#         so, iterate thru rows in reverse fashion with reverse_each and add first row_idx
#         of each row to new_row. add new_row to rotated. increment row_idx and continue
#         until row_idx == matrix.first.size

def rotate90(matrix)
  rotated = []
  row_idx = 0
  until row_idx == matrix.first.size
    new_row = []
    matrix.reverse_each { |row| new_row << row[row_idx] }
    rotated << new_row
    row_idx += 1
  end
  rotated
end

# Examples

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
