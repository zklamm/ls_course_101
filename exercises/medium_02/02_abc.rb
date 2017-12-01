BLOCKS = [
  ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
  ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'],
  ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],
  ['Z', 'M']
]

def block_word?(str)
  used = []
  str.upcase.chars.each do |char|
    idx = BLOCKS.flatten.index(char) / 2
    used << BLOCKS[idx]
  end
  used.uniq.size == str.size
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
