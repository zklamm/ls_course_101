# A triangle is classified as follows:

# right: One angle of the triangle is a right angle (90 degrees)
# acute: All 3 angles of the triangle are less than 90 degrees
# obtuse: One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all
# angles must be greater than 0: if either of these conditions is not satisfied, the
# triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns
# a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle
# is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about
# floating point errors. You may also assume that the arguments are specified in degrees.

# input: 3 angles (nums)
# output: symbol depending on triangle type
# assume: ints for input and are in deg
# logic: store into angles ary, return :invalid if ary.sum != 180
#       if ary.min(2) == ary.max, return :right
#       if ary.max > 90, return :obtuse
#       else return :acute

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  return :invalid if angles.sum != 180 || angles.include?(0)
  return :right if angles.include?(90)
  return :obtuse if angles.max > 90
  :acute
end

# Examples:

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
