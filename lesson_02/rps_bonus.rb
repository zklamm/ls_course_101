VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_COMBOS = { rock:     ['lizard', 'scissors'],
                   paper:    ['rock', 'spock'],
                   scissors: ['paper', 'lizard'],
                   lizard:   ['spock', 'paper'],
                   spock:    ['scissors', 'rock'] }

abbreviation = { r:  'rock',
                 p:  'paper',
                 sc: 'scissors',
                 l:  'lizard',
                 sp: 'spock' }

def prompt(message)
  puts "=> #{message}"
end

def win?(winner, loser)
  WINNING_COMBOS[winner.to_sym].include?(loser)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif player == computer
    prompt("You tied!")
  else
    prompt("You lost!")
  end
end

prompt("Welcome to Rock-Paper-Scissors-Lizard-Spock! The first to 5 wins!")

player_score = 0
computer_score = 0

while (player_score < 5) && (computer_score < 5)
  choice = nil

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase
    if VALID_CHOICES.include?(choice)
      break
    elsif abbreviation.key?(choice.to_sym)
      choice = abbreviation[choice.to_sym]
      break
    elsif choice == 's'
      prompt("Please list two characters or type the entire option")
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  prompt("Current score- Player: #{player_score}; Computer: #{computer_score}")
  # prompt("Do you want to play again?")
  # answer = gets.chomp.downcase
  # break unless answer.start_with?('y')
end

puts '-------------------------------------'
player_score > computer_score ? prompt("Congrats!") : prompt("Too bad!")
prompt("Thanks for playing! Goodbye.")
