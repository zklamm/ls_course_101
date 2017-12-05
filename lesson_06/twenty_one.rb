CARD_VALUE = {
  '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  '10' => 10, 'Jack' => 10, 'Queen' => 10,
  'King' => 10, 'Ace' => 11
}

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

def welcome
  system 'clear'
  puts ""
  puts "♠ ♥ ♦ ♣ Welcome to 'Twenty-One'! ♠ ♥ ♦ ♣"
  puts ""
  prompt "Press 'enter' to deal the cards!"
  gets
end

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  values = %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace]
  suits = %w[♠ ♥ ♦ ♣]
  values.product(suits)
end

def deal_hands!(deck)
  player_hand = []
  dealer_hand = []
  2.times do
    player_hand << deck.sample
    deck.delete_at(deck.index(player_hand[-1]))
    dealer_hand << deck.sample
    deck.delete_at(deck.index(dealer_hand[-1]))
  end
  { player: player_hand, dealer: dealer_hand }
end

def display_hands(hands)
  system 'clear'
  puts ""
  first_dealer_hand(hands)
  puts ""
  puts ""
  display_player_hand(hands)
  puts ""
  puts ""
end

def first_dealer_hand(hands)
  print "Dealer has:  "
  print hands[:dealer][0][0].to_s
  print " & ??? = ???"
end

def display_dealer_hand(hands)
  print "Dealer has:  "
  dealer_hand = []
  hands[0].each do |card|
    dealer_hand << card[0]
  end
  puts joinor(dealer_hand, ', ', '&').to_s
end

def display_player_hand(hands)
  print "Player has:  "
  player_hand = []
  hands[:player].each do |card|
    player_hand << card[0]
  end
  print "#{joinor(player_hand, ', ', '&')} = "
  puts calculate_player_hand(hands).to_s
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def player_turn!(deck, hands)
  choice = ''
  loop do
    prompt "Enter 'hit' or 'stay'."
    choice = gets.chomp.downcase
    break if choice == 'hit' || choice == 'stay'
    prompt "Invalid choice."
  end
  if choice == 'hit'
    player_hit!(deck, hands)
    display_hands(hands)
  else
    'stay'
  end
end

def player_hit!(deck, hands)
  hands[:player] << deck.sample
  deck.delete_at(deck.index(hands[:player][-1]))
end

def dealer_hit!(deck, hands)
  hands[:dealer] << deck.sample
  deck.delete_at(deck.index(hands[:dealer][-1]))
end

def player_stay?(choice)
  choice == 'stay'
end

def player_bust?(hands)
  player_sum = calculate_player_hand(hands)
  player_sum > 21
end

def calculate_player_hand(hands)
  player_sum = 0
  hands[:player].each do |card|
    player_sum += CARD_VALUE[card[0]]
  end
  player_sum
end

def calculate_dealer_hand(hands)
  dealer_sum = 0
  hands[:dealer].each do |card|
    dealer_sum += CARD_VALUE[card[0]]
  end
  dealer_sum
end

def play_again?
  answer = ''
  loop do
    prompt "Play again? Press 'y' or 'n'."
    answer = gets.chomp.downcase
    break if answer.start_with?('y', 'n')
    prompt "Invalid choice."
  end
  answer == 'y'
end

def dealer_turn!(deck, hands)
  
end

def goodbye
  puts ""
  puts "Thanks for playing Twenty-One! ♠ ♥ ♦ ♣"
  puts ""
end

welcome

loop do
  deck = initialize_deck
  hands = deal_hands!(deck) # [player_hand, dealer_hand]

  loop do
    display_hands(hands)
    choice = player_turn!(deck, hands)
    break if player_bust?(hands) || player_stay?(choice)
  end

  if player_bust?(hands)
    puts "Bust! Too bad!"
  else
    puts "You chose to stay!"
    dealer_turn!(deck, hands)
  end
  break unless play_again?
end

goodbye
