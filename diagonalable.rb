module Diagonalable
    #Find Diagonal Targets
  def diag_up_left(row, column)
    #UP and LEFT
    until column <= 0 || row <= 0
      row = row -1
      column = column -1
      @targets << [row, column]
    end
  end

  def diag_down_right(row, column)
    #DOWN and RIGHT
    until column >= 7 || row >= 7
      row = row + 1
      column = column + 1
      @targets << [row, column]
    end
  end

  def diag_up_right(row, column)
    #UP and RIGHT
    until column >= 7 || row <= 0
      row = row - 1
      column = column + 1
      @targets << [row, column]
    end
  end

  def diag_down_left(row, column)
    #DOWN and LEFT
    until column <= 0 || row >= 7
      coords = []
      row = row + 1
      column = column - 1
      @targets << [row, column]
    end
  end

end