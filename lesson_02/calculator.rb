# Welcome to Calculator
# Prompt user for number
# Prompt user for operation
# Perform operation
# Display result

Kernel.puts("Welcome to Calculator")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("Which operation would you like to perform?")
Kernel.puts("1) add 2) subtract 3)multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
elsif operator == '4'
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")
                                                                                