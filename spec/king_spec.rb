require_relative '../king'

RSpec.describe King do
  let(:king) {King.new(3,5)}

  it 'has a row' do
    expect(king.row).to eq 3
  end

  it 'has a column' do
    expect(king.column).to eq 5
  end

  it 'finds the targets on the bottom row' do
    expect{king.bottom_row(3,5)}.to change{king.targets}.from([]).to([[4, 4], [4, 5], [4, 6]])
  end

  it 'finds the targets on the top row' do
    expect{king.top_row(3,5)}.to change{king.targets}.from([]).to([[2, 4], [2, 5], [2, 6]])
  end

  it 'finds the targets on the sides' do
    expect{king.outside(3,5)}.to change{king.targets}.from([]).to([[3, 4], [3, 6]])
  end

  it 'finds all the targets at once' do
    expect{king.find_targets(3,5)}.to change{king.targets}.from([]).to([[4, 4], [4, 5], [4, 6], [2, 4], [2, 5], [2, 6], [3, 4], [3, 6]])
  end

  it 'wont taget spaces too far left or up' do
    expect{king.find_targets(0,0)}.to change{king.targets}.from([]).to([[1, 0], [1, 1], [0, 1]])
  end

  it 'wont taget spaces too far right or down' do
    expect{king.find_targets(7,7)}.to change{king.targets}.from([]).to([[6, 6], [6, 7], [7, 6]])
  end

end