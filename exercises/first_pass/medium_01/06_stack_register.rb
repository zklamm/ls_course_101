def minilang(str)
  reg = 0
  str.split.each_with_object([]) do |word, stack|
    case word
    when word.to_i.to_s then reg = word.to_i
    when 'PUSH'         then stack.push(reg)
    when 'ADD'          then reg += stack.pop
    when 'SUB'          then reg -= stack.pop
    when 'MULT'         then reg *= stack.pop
    when 'DIV'          then reg /= stack.pop
    when 'MOD'          then reg %= stack.pop
    when 'POP'          then reg = stack.pop
    when 'PRINT'        then puts reg
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
