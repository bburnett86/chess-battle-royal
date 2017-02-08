require_relative 'chess_piece'

class Board

  attr_accessor :chess_board

  def initialize
    @chess_board = Array.new(8) {Array.new(8, "| ------ |")}
  end

  #Board display without quotes or anything. View method
  def display_board
    @chess_board.each {|row| puts row.join}
  end

  #Create new instance of queen, save queen location to the board Controller Method
  def add_chess_piece(type, row, column)
    if type == "king"
      @chess_board[row][column] = "|  King  |"
    elsif type == "bishop"
      @chess_board[row][column] = "| Bishop |"
    elsif type == "rook"
      @chess_board[row][column] = "|  Rook  |"
    elsif type == "knight"
      @chess_board[row][column] = "| Knight |"
    elsif type == "pawn"
      @chess_board[row][column] = "|  Pawn  |"
    else
      @chess_board[row][column] = "|  Queen |"
    end
  end

  def add_target_range(array)
    array.each do |space|
      row = space[0]
      column = space[1]
      if @chess_board[row][column] == "| ------ |"
        @chess_board[row][column] = "|    *   |"
      elsif @chess_board[row][column] == "|    *   |"
        @chess_board[row][column] = "|   **   |"
      else
        @chess_board[row][column][1] = "*"
      end
    end
  end

end

# board = Board.new
# p board.display_board
# p board.chess_board[3][5]
# board.add_target_range([[4, 4], [4, 5], [4, 6], [2, 4], [2, 5], [2, 6], [3, 4], [3, 6]])
