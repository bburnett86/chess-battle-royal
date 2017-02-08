require_relative 'chess_piece'
require_relative 'diagonalable'

class Bishop < ChessPiece
  include Diagonalable

  def find_targets(row, column)
    @targets << self.diag_up_left(row, column)
    @targets << self.diag_up_right(row, column)
    @targets << self.diag_down_left(row, column)
    @targets << self.diag_down_right(row, column)
    @targets.compact!
  end
end