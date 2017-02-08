require_relative 'chess_piece'

class King < ChessPiece

  def bottom_row(row, column)
    counter = 0
    if row + 1 > 7
      return nil
    elsif column + 1 <= 7 && column -1 < 0
      until counter > 1
        @targets.push([row + 1, column + counter])
        counter += 1
      end
    elsif column -1 >= 0 && column + 1 > 7
      while counter <= 1
        @targets.push([row + 1, column + counter -1])
        counter += 1
      end
    else
      counter -= 1
      while counter <= 1
        @targets.push([row + 1, column + counter])
        counter += 1
      end
    end
  end

  def top_row(row, column)
    counter = 0
    if row - 1 < 0
      return
    elsif column + 1 <= 7 && column -1 < 0
      while counter <= 1
        @targets.push([row - 1, column + counter])
        counter += 1
      end
    elsif column -1 >= 0 && column + 1 > 7
      while counter <= 1
        @targets.push([row - 1, column + counter -1])
        counter += 1
      end
    else
      counter -= 1
      while counter <= 1
        @targets.push([row -1, column + counter])
        counter += 1
      end
    end
  end

  def outside(row, column)
    if column + 1 > 7 && column - 1 >= 0
      @targets.push([row, column - 1])
    elsif column + 1 <= 7 && column - 1 < 0
      @targets.push([row, column + 1])
    else
      @targets.push([row, column - 1])
      @targets.push([row, column + 1])
    end
    @targets[-1]
  end

  def find_targets(row, column)
    @targets << self.bottom_row(row, column)
    @targets << self.top_row(row, column)
    @targets << self.outside(row, column)
    @targets.uniq!
    @targets.delete(nil)
  end

end

# king = King.new(0, 0)
# king.find_targets(0, 0)
# p king.targets