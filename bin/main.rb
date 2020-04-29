class TicTacToe

  def initialize

    greetings

    start_game

    play_again

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

    # this would conatin the game logic

    puts 'game logic'

  end



  # we ask if the user wi=ould want to play again

  def play_again

    puts 'Would you love to play again? Y/N'

    result = gets.chomp.upcase



    if result == 'Y'

      start_game

    elsif result == 'N'

      puts 'Thank you for playing'

    else

      puts 'Invalid inputs chose either Y/N'

    end

  end

end

# k = TicTacToe.new

# k.intialize

