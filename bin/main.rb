require_relative '../lib/player_logic.rb'

class TicTacToe
  def initialize
    greetings
    game_loop
  end

  # when the game is started we greet the players
  def greetings
    puts 'Hello! welcome to TIC-TAC-TOC game'
    puts '  |  |  '
    puts '--------'
    puts '  |  |  '
    puts '--------'
    puts '  |  |  '
    puts 'This is a game played by two players "X" & "O"'
    puts 'Let start the game!'
    puts 'Enter player-one name:'
    player1 = gets.chomp
    puts 'What is player_two name:'
    player2 = gets.chomp
    puts " Hi #{player1} & #{player2}"
  end

  #  After greeting the players we start the game
  def start_game
    # game logic
    puts 'game tells which player turn it is'
    puts 'game asks player to select from available moves'
    puts 'game informs player if selected move is invalid'
    puts 'game displays board after player move'
    puts 'game informs player if selected move is a winning move'
    puts 'game informs player if selected move is a draw move'
    puts "game repeats all actions for next player's move"
  end

  def game_loop
    start_game
    play_again
  end

  # we ask if the user wi=ould want to play again
  def play_again
    result = ''
    until result == 'Y' || result == 'N'
      puts 'Would you like to play again? (Y/N): '
      result = gets.chomp.upcase
    end
    case result
    when 'Y'
      start_game
    when 'N'
      puts 'Thank you for playing!'
    end
  end
end

ttt = TicTacToe.new
ttt.initialize
