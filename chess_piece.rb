class ChessPiece
  attr_reader :row, :column
  attr_accessor :targets

  def initialize(row, column)
    @targets = []
    @row = row
    @column = column
  end
end