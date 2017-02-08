require_relative 'view'
require_relative 'board'
require_relative 'queen'
require_relative 'king'
require_relative 'knight'
require_relative 'rook'
require_relative 'bishop'

class Controller


# => def create_user
  # view.introduction
  view = View.new
  user_type = view.get_user_type
  user_type.downcase!
  user_row = view.get_user_row
  user_column = view.get_user_column
  board = Board.new
  board.add_chess_piece(user_type, user_row, user_column)
  board.display_board
  sleep 3
  10.times {puts}

  if user_type == "rook"
    user = Rook.new(user_row, user_column)
  elsif user_type == "queen"
    user = Queen.new(user_row, user_column)
  elsif user_type == "knight"
    user = Knight.new(user_row, user_column)
  elsif user_type == "king"
    user = King.new(user_row, user_column)
  else
    user = Bishop.new(user_row, user_column)
  end

  user.find_targets(user_row, user_column)

# => end

# => def create_cpu
  board = Board.new
  cpu_type = view.get_cpu_type
  cpu_type.downcase!
  p cpu_type
  cpu_row = view.get_cpu_row
  p cpu_row
  cpu_column = view.get_cpu_column
  p cpu_column
  view.show_opponent
  board.add_chess_piece(cpu_type, cpu_row, cpu_column)
  board.display_board
  sleep 3
  10.times {puts}

  if cpu_type == "rook"
    cpu = Rook.new(cpu_row, cpu_column)
  elsif cpu_type == "queen"
    cpu = Queen.new(cpu_row, cpu_column)
  elsif cpu_type == "knight"
    cpu = Knight.new(cpu_row, cpu_column)
  elsif cpu_type == "king"
    cpu = King.new(cpu_row, cpu_column)
  else
    cpu = Bishop.new(cpu_row, cpu_column)
  end

  cpu.find_targets(cpu_row, cpu_column)

# => end

  # def user_attack_range
  board = Board.new
  board.add_chess_piece(user_type, user_row, user_column)
  board.add_target_range(user.targets)
  board.display_board
  view.show_user_attack_range
  sleep 5
  10.times {puts}
  # end


  # def cpu_attack_range
  board = Board.new
  board.add_chess_piece(cpu_type, cpu_row, cpu_column)
  board.add_target_range(cpu.targets)
  board.display_board
  view.show_cpu_attack_range
  sleep 5
  10.times {puts}
  # end

  # def battlefield
  board = Board.new
  board.add_chess_piece(user_type, user_row, user_column)
  board.add_chess_piece(cpu_type, cpu_row, cpu_column)
  board.add_target_range(user.targets)
  board.add_target_range(cpu.targets)
  board.display_board
  view.show_full_board
  sleep 5
  10.times {puts}
  # return board
  # end

  # def results(board, user)

  if user.targets.include?([cpu_row, cpu_column]) && cpu.targets.include?([user_row, user_column])
    view.draw
  elsif user.targets.include?([cpu_row, cpu_column])
    view.winner
  elsif cpu.targets.include?([user_row, user_column])
    view.loser
  else
    view.misfire
  end

  # end



end