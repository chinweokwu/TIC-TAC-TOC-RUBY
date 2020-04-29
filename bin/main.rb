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



      # game tells which player turn it is



      # game asks player to select from available moves



      # game informs player if selected move is invalid



      # game displays board after player move



      # game informs player if selected move is a winning move



      # game informs player if selected move is a draw move



      # game repeats all actions for next player's move



end







  end







  # we ask if the user wi=ould want to play again







  def play_again



    loop do



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







  def game_loop



    start_game while play_again



  end

end







# k = TicTacToe.new







# k.intialize



