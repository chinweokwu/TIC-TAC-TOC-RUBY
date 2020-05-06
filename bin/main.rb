require_relative('../lib/player.rb')
require_relative('../lib/board.rb')

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

puts 'Enter player_two name:'

team2 = gets.chomp

while team1.is_a?(Integer) || team1.is_a?(Integer)
end

while team1 == team2
  puts ' please Enter different name:'
  team2 = gets.chomp
end


player1 = Player.new(team1)
player2 = Player.new(team2)


loop do
  board = Board.new

  loop do
    loop do
      print "#{player1.name}, what number you choose: "

      move = Integer(gets.chomp, 10)

      if board.valid?([1, move])

        board.update([1, move])

        puts(board.show)

        break

      else

        puts('Wrong move!')

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
      print "#{player2.name}, what number you choose: "

      move = Integer(gets.chomp, 10)

      if board.valid?([2, move])

        board.update([2, move])

        puts(board.show)

        break

      else

        puts('Wrong move!')

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
