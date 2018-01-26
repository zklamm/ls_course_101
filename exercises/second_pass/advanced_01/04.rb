# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as
# represented by a ruby Array of Arrays.

# Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices.
# Any matrix can be transposed by simply switching columns with rows.

# Modify your transpose method from the previous exercise so it works with any
# matrix with at least 1 row and 1 column.

# input: an m*n matrix, m being rows, n being columns
# output: n*m matrix (input transposed)
# assume: m & n will be at least one. Do not mutate input
# logic: iterate thru rows. on first iteration, take the first element from each row and
#       place into a new column, then add column to transposed. Increment row and repeat
#       until row == matrix[0].size
#       (initialize transposed as [], then call each_index on matrix)

def transpose(matrix)
  transposed = []
  row = 0
  until row == matrix[0].size
    col = []
    matrix.each_index { |i| col << matrix[i][row] }
    transposed << col
    row += 1
  end
  transposed
end

# Examples:

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
