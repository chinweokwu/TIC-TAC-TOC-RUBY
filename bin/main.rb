require_relative('../lib/player.rb')
require_relative('../lib/board.rb')
# rubocop: disable Style/DoubleNegation
def numeric?(string)
  !!Kernel.Float(string)
rescue TypeError, ArgumentError
  false
end

def empty_string(strings)
  true if (strings == ' ') || (strings == '') || strings.nil?
end

def player_indexs(str)
  true if str.is_a? Numeric
end

puts 'Hello! welcome to TIC-TAC-TOC game'
puts ' 1 | 2 | 3 '
puts '--------'
puts ' 4 | 5 | 6 '
puts '--------'
puts ' 7 | 8 | 9 '
puts 'This is a game played by two players "X" & "O"'
puts 'Let start the game'
puts 'Enter player-one name:'
team1 = gets.chomp
while numeric?(team1) || empty_string(team1)
  puts 'Enter player name as string'
  team1 = gets.chomp
end
puts 'Enter player_two name:'
team2 = gets.chomp
while numeric?(team2) || empty_string(team2)
  puts 'Enter player name as string'
  team2 = gets.chomp
end
while team1 == team2
  puts ' please Enter different name:'
  team2 = gets.chomp
end
puts "#{team1.upcase} is 'X' while #{team2.upcase} is 'O' "
player1 = Player.new(team1)
player2 = Player.new(team2)

loop do
  board = Board.new

  loop do
    loop do
      print "#{player1.name}, Chose a number from (1-9): "

      player_index = gets.chomp
      next unless numeric?(player_index)

      move = player_index.to_i
      if board.valid?([1, move])
        board.update([1, move])
        puts(board.show)
        break
      else
        puts('position taken or wrong number!')
      end
    end

    if board.win?
      puts("#{player1.name}, wins!")
      player1.change_score
      break
    elsif board.draw?
      puts("It's a draw!")
      break
    end

    loop do
      print "#{player2.name}, Chose a number from (1-9): "
      player_index = gets.chomp
      next unless numeric?(player_index)

      move = player_index.to_i

      if board.valid?([2, move])
        board.update([2, move])
        puts(board.show)
        break
      else
        puts('position taken or wrong number!')
      end
    end

    if board.win?
      puts("#{player2.name}, wins!")
      player2.change_score
      break
    elsif board.draw?
      puts("It's a draw!")
      break
    end
  end

  puts "The current score is #{player1.score}:#{player2.score}."
  puts 'Would you like to play again? (y/n): '

  play_again = gets.chomp
  break if play_again == 'n'
end

# rubocop: enable Style/DoubleNegation
