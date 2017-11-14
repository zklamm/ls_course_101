def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt 'Welcome to the Calculator! Enter your name.'

name = nil
loop do
  name = gets.chomp
  if name.empty?
    prompt "Make sure to use a valid name."
  else
    break
  end
end

prompt "Hi #{name}!"

loop do
  number1 = nil
  loop do
    prompt "What's the first number?"
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt "Hmm...that's not a valid number."
    end
  end

  number2 = nil
  loop do
    prompt "What's the second number?"
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt "Hmm...that's not a valid number."
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  prompt operator_prompt
  operator = nil
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt "Must choose 1, 2, 3, or 4."
    end
  end

  prompt "#{operation_to_message(operator)}....."

  result =  case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_i * number2.to_i
            when '4'
              number1.to_f / number2.to_f
            end

  prompt "The result is #{result}"

  prompt "Do you want to perform another calculation? (Y to calculate again)"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt "Thank you for using the Calculator!"
