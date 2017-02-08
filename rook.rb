require_relative 'chess_piece'
require_relative 'crossable'

class Rook < ChessPiece
  include Crossable

  def find_targets(row, column)
    @targets << self.row_targets(row)
    @targets << self.col_targets(column)
    @targets.delete([row, column])
    @targets.compact!
  end
end

# rook = Rook.new(3,5)
# p rook.find_targets(3,5)