require_relative 'chess_piece'
require_relative 'diagonalable'
require_relative 'crossable'

class Queen < ChessPiece
  include Diagonalable
  include Crossable

  def find_targets(row, column)

    @targets << self.diag_up_left(row, column)
    @targets << self.diag_up_right(row, column)
    @targets << self.diag_down_left(row, column)
    @targets << self.diag_down_right(row, column)

    @targets << self.row_targets(row)
    @targets << self.col_targets(column)
    @targets.delete([row, column])
    @targets.compact!
  end
end

# queen = Queen.new(3,5)
# p queen.targets
# queen.col_targets(5)
# p queen.targets