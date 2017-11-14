puts 'What is your age?'
current_age = gets.to_i

puts 'At what age would you like to retire?'
retirement_age = gets.to_i

current_year = Time.now.year
print "It's #{current_year}. You will retire in "
puts "#{current_year + (retirement_age - current_age)}."
puts "Only #{retirement_age - current_age} years of work to go!"
