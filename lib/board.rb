class Board
  attr_accessor :Board

  def initialize
    @board = ["","","","","","","","",""]
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts " ----------- "
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts " ----------- "
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  def player_move(index,token)
    @board[index] = token
  end
  def position_taken?(index)
    if (@board[index] == " ") || (@board[index] == "") || (@board[index] == nil)
       return false 
    else
       return true
    end
 end
 def valid_move?(index)
  if index.between?(0,8) && !position_taken?(@board, index)
     return true
  end
end

end