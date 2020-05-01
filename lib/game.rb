class Player
    WIN_COMBINATIONS = [

        [0, 1, 2],
      
        [3, 4, 5],
      
        [6, 7, 8],
      
        [0, 3, 6],
      
        [1, 4, 7],
      
        [2, 5, 8],
      
        [0, 4, 8],
      
        [6, 4, 2]
      
      ].freeze
      
      
      
      def display_board(board)
      
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
      
        puts '-----------------------------------------'
      
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
      
        puts '-----------------------------------------'
      
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
      
      end
      
      
      
      def index(user_input)
      
        user_input.to_i - 1
      
        end
      
      
      
      def move(board, index, current_player)
      
        board[index] = current_player
      
      end
      
      
      
      def position_taken?(board, index)
      
        !(board[index].nil? || board[index] == ' ')
      
      end
      
      
      
      def valid_move?(board, index)
      
        index.between?(0, 8) && !position_taken?(board, index)
      
      end
      
      
      
      def turn_count(board)
      
        turn = 0
      
        board.each do |index|
      
          turn += 1 if index == 'X' || index == 'O'
      
        end
      
        turn
      
      end
      
      
      
      def current_player(board)
      
        # if the turn count is an even number, that means O just went, so the next/current player is X
      
        num_turns = turn_count(board)
      
        player = if num_turns.even?
      
                   'X'
      
                 else
      
                   'O'
      
                 end
      
        player
      
      end
      
      
      
      def turn(board)
      
        puts 'Please select a number from 1 to 9:'
      
        user_input = gets.chomp
      
        index = input_to_index(user_input)
      
        if valid_move?(board, index)
      
          player_token = current_player(board)
      
          move(board, index, player_token)
      
          display_board(board)
      
        else
      
          turn(board)
      
        end
      
      end
      
      
      
      def won?(board)
      
        WIN_COMBINATIONS.each do |win_combo|
      
          index_0 = win_combo[0]
      
          index_1 = win_combo[1]
      
          index_2 = win_combo[2]
      
      
      
          position_1 = board[index_0]
      
          position_2 = board[index_1]
      
          position_3 = board[index_2]
      
      
      
          if position_1 == 'X' && position_2 == 'X' && position_3 == 'X'
      
            return win_combo
      
          elsif position_1 == 'O' && position_2 == 'O' && position_3 == 'O'
      
            return win_combo
      
          end
      
        end
      
        false
      
      end
      
      
      
      def full?(board)
      
        board.all? { |index| index == 'X' || index == 'O' }
      
      end
      
      
      
      def draw?(board)
      
        if !won?(board) && full?(board)
      
          true
      
        else
      
          false
      
        end
      
      end
      
      
      
      def over?(board)
      
        if won?(board) || draw?(board)
      
          true
      
        else
      
          false
      
        end
      
      end
      
      
      
      def winner(board)
      
        index = []
      
        index = won?(board)
      
        if index == false
      
          nil
      
        else
      
          if board[index[0]] == 'X'
      
            'X'
      
          else
      
            'O'
      
          end
      
        end
      
      end
      
      
      
      def play(board)
      
        turn(board) until over?(board) == true
      
      
      
        if won?(board)
      
          puts "Congratulations #{winner(board)}!"
      
        elsif draw?(board)
      
          puts 'Draw Game!, play again'
      
        end
      
      end
      
      
end