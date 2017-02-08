require_relative 'chess_piece'

class Knight < ChessPiece

  def spot1(row, column)
    if row - 2 >= 0 && column -1 >= 0
      @targets << [row - 2, column - 1]
    end
    @targets.pop
  end

  def spot2(row, column)
    if row - 2 >= 0 && column + 1 <= 7
      @targets << [row - 2, column + 1]
    end
    @targets.pop
  end

  def spot3(row, column)
    if row - 1 >= 0 && column - 2 >=0
      @targets << [row - 1, column - 2]
    end
    @targets.pop
  end

  def spot4(row, column)
    if row - 1 >=0 && column + 2 <= 7
      @targets << [row - 1, column + 2]
    end
    @targets.pop
  end

  def spot5(row, column)
    if row + 2 <= 7 && column -1 >= 0

      @targets << [row + 2, column - 1]
    end
    @targets.pop
  end

  def spot6(row, column)
    if row + 2 <= 7 && column + 1 <= 7
      @targets << [row + 2, column + 1]
    end
    @targets.pop
  end

  def spot7(row, column)
    if row + 1 <= 7 && column - 2 >=0
      @targets << [row + 1, column - 2]
    end
    @targets.pop
  end

  def spot8(row, column)
    if row + 1 <= 7 && column + 2 <= 7
      @targets << [row + 1, column + 2]
    end
    @targets.pop
  end

  def find_targets(row, column)
    @targets << self.spot1(row, column)
    @targets << self.spot2(row, column)
    @targets << self.spot3(row, column)
    @targets << self.spot4(row, column)
    @targets << self.spot5(row, column)
    @targets << self.spot6(row, column)
    @targets << self.spot7(row, column)
    @targets << self.spot8(row, column)
    @targets.compact!
    # p @targets
  end

end

knight = Knight.new(3, 5)
targets = knight.find_targets(3, 5)
p targets