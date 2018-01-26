# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not
# use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

# input: word
# output: bool, true if word can be spelled using blocks
# logic: store blocks into a constant, BLOCKS using nested arrays
#     initialize used and add to it if block is used
#     see if used == used.uniq

BLOCKS = [
  ['B', 'O'],   ['X', 'K'],   ['D', 'Q'],   ['C', 'P'],   ['N', 'A'],
  ['G', 'T'],   ['R', 'E'],   ['F', 'S'],   ['J', 'W'],   ['H', 'U'],
  ['V', 'I'],   ['L', 'Y'],   ['Z', 'M']
]

def block_word?(word)
  used = []
  word.each_char do |char|
    BLOCKS.each do |block|
      used << block if block.include?(char.upcase)
    end
  end
  used == used.uniq
end

# Examples:

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
