# Build a program that asks a user for the length and width of a room in
# meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

SQ_FT_PER_SQ_M = 10.7639

puts "Enter the length of the room in meters:"
length = gets.to_f

puts "Enter the width of the room in meters:"
width = gets.to_f

area_m = (length * width).round(2)
area_ft = (area_m * SQ_FT_PER_SQ_M).round(2)
puts "The area of the room is #{area_m} square meters (#{area_ft} square feet)."
