def valid_num?(num)
  valid_int?(num) || valid_float?(num)
end

def valid_int?(int)
  int.to_i.to_s == int
end

def valid_float?(float)
  float.to_f.to_s == float
end

def prompt(str)
  puts "=> #{str}"
end

loop do
  prompt 'Welcome to the Mortgage Calculator!'
  prompt '-----------------------------------'

  total_loan = nil
  loop do
    prompt 'What is the loan amount?'
    total_loan = gets.chomp
    if valid_num?(total_loan)
      total_loan = total_loan.to_f
      break
    else
      prompt 'Please enter a valid number.'
    end
  end

  apr = nil
  loop do
    prompt 'What is the APR? If 5%, please enter \'5\'.'
    apr = gets.chomp
    if valid_num?(apr)
      apr = apr.to_f / 100
      break
    else
      prompt 'Please enter a valid percentage.'
    end
  end

  duration_years = nil
  loop do
    prompt 'What is the loan duration in years?'
    duration_years = gets.chomp
    if valid_num?(duration_years)
      duration_years = duration_years.to_f
      break
    else
      prompt 'Please enter a valid number.'
    end
  end

  monthly_interest = apr / 12
  duration_months = duration_years * 12
  monthly_payment = total_loan * (monthly_interest /
                    (1 - (1 + monthly_interest)**(-duration_months)))
  prompt "Your monthly payment is $#{monthly_payment.truncate(2)}."

  prompt 'Do you want to calculate another mortgage?'
  prompt '(Input \'y\' to start another calulation)'
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt 'Thanks for using the Mortgage Calculator!'
