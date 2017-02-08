module Crossable
  #Find all targets in row
  def row_targets(row)
    column = 0
    until column == 8
      @targets << [row, column]
      column += 1
    end
  end

  #Find all targets in column
  def col_targets(column)
    row = 0
    until row == 8
      @targets << [row, column]
      row += 1
    end
  end
end