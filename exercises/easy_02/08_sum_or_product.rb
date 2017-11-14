def prompt(str)
  puts ">> #{str}"
end

loop do
  int = nil

  loop do
    prompt('Please enter an integer greater than 0:')
    int = gets.to_i
    if int > 0
      break
    else
      prompt('That\'s not an integer greater than 0.')
    end
  end

  loop do
    prompt('Enter \'s\' to compute the sum, \'p\' to compute the product.')
    oper = gets.chomp.downcase
    case oper
    when 's'
      sum = (1..int).reduce(:+)
      prompt("The sum of the integers between 1 and #{int} is #{sum}.")
      break
    when 'p'
      product = (1..int).reduce(:*)
      prompt("The product of the integers between 1 and #{int} is #{product}.")
      break
    else
      prompt('Invalid input.')
    end
  end

  prompt('Would you like to run the program again? If so, enter \'y\'.')
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt('Goodbye!')
