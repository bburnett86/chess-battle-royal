require_relative '../queen'

  RSpec.describe Queen do
  let(:queen) {Queen.new(3,5)}

  it 'has a row' do
    expect(queen.row).to eq 3
  end

  it 'has a column' do
    expect(queen.column).to eq 5
  end

  it 'finds targets top left' do
    expect{queen.diag_up_left(3,5)}.to change{queen.targets}.from([]).to([[2, 4], [1, 3], [0, 2]])
  end

  it 'finds targets top right' do
    expect{queen.diag_up_right(3,5)}.to change{queen.targets}.from([]).to([[2, 6], [1, 7]])
  end

  it 'finds targets down left' do
    expect{queen.diag_down_left(3,5)}.to change{queen.targets}.from([]).to([[4, 4], [5, 3], [6, 2], [7, 1]])
  end

  it 'finds targets down right' do
    expect{queen.diag_down_right(3,5)}.to change{queen.targets}.from([]).to([[4, 6], [5, 7]])
  end

  it 'collects entire row' do
    expect{queen.row_targets(3)}.to change{queen.targets}.from([]).to([[3, 0], [3, 1], [3, 2], [3, 3], [3, 4], [3, 5], [3, 6], [3, 7]])
  end

  it 'collects entire column' do
    expect{queen.col_targets(5)}.to change{queen.targets}.from([]).to([[0, 5], [1, 5], [2, 5], [3, 5], [4, 5], [5, 5], [6, 5], [7, 5]])
  end

  it 'finds all targets, removing nil and itself' do
    expect(queen.find_targets(3,5)).to eq ([[2, 4], [1, 3], [0, 2], [2, 6], [1, 7], [4, 4], [5, 3], [6, 2], [7, 1], [4, 6], [5, 7], [3, 0], [3, 1], [3, 2], [3, 3], [3, 4], [3, 6], [3, 7], [0, 5], [1, 5], [2, 5], [4, 5], [5, 5], [6, 5], [7, 5]])
  end
end