require_relative 'player.rb'



require_relative 'board.rb'







class Player



  WINNING_COMBINATIONS = [



    [0, 1, 2],



    [3, 4, 5],



    [6, 7, 8],



    [0, 3, 6],



    [1, 4, 7],



    [2, 5, 8],



    [0, 4, 8],



    [2, 4, 6]



  ].freeze



  attr_reader :board, :current_player







  def initialize(player_one, player_two)



    @player_one = player_one



    @player_two = player_two



    @board = Board.new



    @current_player = @player_two.is_winner? player_two : player_one



    @turns = 0



  end







  def running?



    @current_player.is_winner || not_a_tie?



  end







  def next_to_play



    @current_player = (@current_player == @player_one ? @player_two : @player_one)



  end







  def play(cell_selected)



    @current_player.cell_selected = cell_selected



    @board.change_cell(@current_player.cell_selected, @current_player.piece)



    detect_winner



    @turns += 1



    next_to_play unless detect_winner



    @current_player



  end







  def not_a_tie?



    @turns >= 9



  end







  private







  def detect_winner



    current_board = @board.render



    WINNING_COMBINATIONS.each do |line_winner|



      a = line_winner[0]



      b = line_winner[1]



      c = line_winner[2]



      next unless (current_board[a] == current_board[b]) && (current_board[b] == current_board[c])







      @current_player.is_winner = current_board[c] == @current_player.piece



    end



    @current_player.name if @current_player.is_winner

 end

end



