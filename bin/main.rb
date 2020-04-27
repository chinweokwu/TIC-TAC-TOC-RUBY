puts 'Hello! welcome to TIC-TAC-TOC game'

puts '  |  |  '
puts '--------'
puts '  |  |  '
puts '--------'
puts '  |  |  '

puts 'This is a game played by two players "X" & "O"'

puts 'What is player-one name:'
player1 = gets.chomp
puts 'What is player_two name:'
player2 = gets.chomp

puts "#{player1}: where do you want to go? 0-8"
puts "#{player1} place your token 'X'"
puts "#{player2}: where do you want to go? 0-8"
puts "#{player2} place your token 'O'"
