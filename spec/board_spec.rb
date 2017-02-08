require_relative '../board'

RSpec.describe Board do
  let(:board) {Board.new}

  it 'has a length of 8' do
    expect(board.chess_board.length).to eq(8)
  end

  it 'can add chess piece' do
    expect{board.add_chess_piece("queen", 3, 5)}.to change{board.chess_board[3][5]}.from("| ------ |").to("|  Queen |")
  end

  it 'can add target range' do
    expect{board.add_target_range([[4, 4], [4, 5], [4, 6], [2, 4], [2, 5], [2, 6], [3, 4], [3, 6]])}.to change{board.chess_board[4][4]}.from("| ------ |").to("|    *   |")
  end
end