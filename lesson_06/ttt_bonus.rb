FIRST_MOVE = 'choose' # 'player', 'computer', 'choose'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diag

INITIAL_MARKER = ' '
PLAYER_MARKER = 'x'
COMPUTER_MARKER = 'o'

def welcome
  system 'clear'
  puts "   Welcome to Tic Tac Toe!"
  puts ""
end

def determine_first_player
  if FIRST_MOVE == 'choose'
    current_player = ''
    loop do
      prompt "Who starts? Enter 'Player' or 'Computer'"
      current_player = gets.chomp.downcase
      break if valid_player?(current_player)
      prompt "Invalid choice."
    end
    current_player
  else
    FIRST_MOVE
  end
end

def prompt(msg)
  puts "=> #{msg}"
end

def valid_player?(choice)
  choice == 'player' || choice == 'computer'
end

def initialize_scores
  player_score = 0
  computer_score = 0
  cat_score = 0
  [player_score, computer_score, cat_score]
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def display_game(board, scores)
  display_board(board)
  display_scores(scores)
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(board)
  system 'clear'
  puts "You are '#{PLAYER_MARKER}' | Computer is '#{COMPUTER_MARKER}'"
  puts ""
  puts "    1|2|3"
  puts "    4|5|6"
  puts "    7|8|9"
  puts ""
  puts "         |     |"
  puts "      #{board[1]}  |  #{board[2]}  |  #{board[3]}"
  puts "         |     |"
  puts "    -----+-----+-----"
  puts "         |     |"
  puts "      #{board[4]}  |  #{board[5]}  |  #{board[6]}"
  puts "         |     |"
  puts "    -----+-----+-----"
  puts "         |     |"
  puts "      #{board[7]}  |  #{board[8]}  |  #{board[9]}"
  puts "         |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def display_scores(scores)
  puts ""
  display_winner(scores)
  puts "  ====================="
  puts "  |     Your Score: #{scores[0]} |"
  puts "  | Computer Score: #{scores[1]} |"
  puts "  |      Cat Score: #{scores[2]} |"
  puts "  ====================="
  puts ""
end

def display_winner(scores)
  if scores[0] > 4
    puts "  You won!! Congrats!"
  elsif scores[1] > 4
    puts "  Computer wins! Womp."
  elsif scores[2] > 4
    puts "  MEOW! Lawlz"
  else
    puts "  First to 5 wins!"
  end
end

def place_piece!(board, choice)
  if choice == 'player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def player_places_piece!(board)
  square = ''
  loop do
    puts ""
    puts ""
    prompt "Choose a square (#{joinor(empty_squares(board))}):"
    square = gets.to_i
    break if empty_squares(board).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  board[square] = PLAYER_MARKER
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

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def computer_places_piece!(board)
  square = strategic_move(board, COMPUTER_MARKER)
  square = strategic_move(board, PLAYER_MARKER) if square == 0
  if square == 0 && board[5] == INITIAL_MARKER
    square = 5
  elsif square == 0
    square = empty_squares(board).sample
  end
  board[square] = COMPUTER_MARKER
end

def strategic_move(board, marker)
  square = 0
  WINNING_LINES.each do |line|
    if board.values_at(*line).count(marker) == 2
      line.each_with_index do |piece, idx|
        square = piece if board[line[idx]] == INITIAL_MARKER
      end
    end
  end
  square
end

def alternate_player(choice)
  choice == 'player' ? 'computer' : 'player'
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif board.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def board_full?(board)
  empty_squares(board).empty?
end

def score_increase!(board, scores)
  case detect_winner(board)
  when 'Player'
    scores[0] += 1
    display_game(board, scores)
    puts 'You won that round!' unless scores[0] > 4
  when 'Computer'
    scores[1] += 1
    display_game(board, scores)
    puts 'Computer won that round!' unless scores[1] > 4
  else
    scores[2] += 1
    display_game(board, scores)
    puts 'The cat won that round!' unless scores[2] > 4
  end
end

def next_round
  puts ""
  prompt "Hit 'enter' for next round."
  gets
end

def goodbye
  puts ""
  puts ""
  prompt "Thanks for playing! Good bye!"
end

welcome

current_player = determine_first_player
scores = initialize_scores

loop do
  board = initialize_board

  loop do
    display_game(board, scores)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  score_increase!(board, scores)
  break if scores.any? { |score| score > 4 }

  next_round
end

goodbye
