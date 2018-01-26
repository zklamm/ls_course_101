
# Create a method that takes two integers as arguments. The first argument is
# a count, and the second is the first number of a sequence that your method
# will create. The method should return an Array that contains the same number
# of elements as the count argument, while the values of each element will be
# multiples of the starting number.

# input: 2 ints, first is count, second is start of sequence
# output: ary that is the size of count, each element being a multiple of start num
# You may assume that the count argument will always have a value of 0 or
# greater, while the starting number can be any integer value.
# If the count is 0, an empty list should be returned.
# logic: count times, do i * num and store in list variable

# def sequence(count, start)
#   (1..count).map { |i| i * start }
# end

# # examples:

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []



###########################

# A collection of spelling blocks has two letters per block, as shown in this list:


# This limits the words you can spell with the blocks to just those words
# that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument
# can be spelled from this set of blocks, false otherwise.

BLOCKS = [['B', 'O'],   ['X', 'K'],   ['D', 'Q'],   ['C', 'P'],   ['N', 'A'],
['G', 'T'],   ['R', 'E'],   ['F', 'S'],   ['J', 'W'],   ['H', 'U'],
['V', 'I'],   ['L', 'Y'],   ['Z', 'M']]

# input: str (word)
# output: bool, true if input can be spelled using given spelling blocks
# assume: each spelling block can only be used once
# logic: store blocks into a constant called BLOCKS using array data structure
# if letter is used, remove that block from the ary, so iterate thru each subary and
# see if it inludes the current letter (we have to iterate thru input as well)
require 'pry'
def block_word?(word)
  used = []
  word.each_char do |char|
    BLOCKS.each do |block|
      used << block if block.include?(char.upcase)
    end
  end
  used == used.uniq
end

# examples:

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

