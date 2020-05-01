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
    puts 'Enter player_two name:'
    player2 = gets.chomp
    puts " Hi #{player1} & #{player2}"
  end

  #  After greeting the players we start the game
  def start_game
    # game logic
    # puts 'game tells which player turn it is'
    # puts 'game asks player to select from available moves'
    # puts 'game informs player if selected move is invalid'
    # puts 'game displays board after player move'
    # puts 'game informs player if selected move is a winning move'
    # puts 'game informs player if selected move is a draw move'
    # puts "game repeats all actions for next player's move"
  end

  def game_loop
    start_game while play_again
  end

  # we ask if the user wi=ould want to play again
  def play_again
    loop do
      puts 'Would you like to play again? (Y/N): '
      result = gets.chomp.upcase
      if result == 'Y'
        return true
      elsif result == 'N'
        return false
      else 'wrong inputs'
      end
    end
  end
end

ttt = TicTacToe.new
ttt.initialize
