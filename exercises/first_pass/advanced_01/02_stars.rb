def star(n)
  rows = Proc.new do |i|
    pattern = '*' + ' ' * (n / 2 - i)
    puts((pattern * 2 + '*').center(n))
  end

  1.upto(n / 2) { |i| rows.call(i) }
  puts '*' * n
  (n / 2).downto(1) { |i| rows.call(i) }
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

puts '==============================='

star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
