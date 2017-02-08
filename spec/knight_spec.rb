require_relative '../knight'

RSpec.describe Knight do
  let(:knight) {Knight.new(3,5)}

  it 'will return all eight targets when it is not being disrupted by a border' do
    expect{knight.find_targets(3,5)}.to change{knight.targets.length}.from(0).to(8)
  end

  it 'will return the correct targets' do
    expect{knight.find_targets(3,5)}.to change{knight.targets}.from([]).to([[1, 4], [1, 6], [2, 3], [2, 7], [5, 4], [5, 6], [4, 3], [4, 7]])
  end

  it 'will not go too far left or up' do
    expect{knight.find_targets(0,0)}.to change{knight.targets}.from([]).to([[2, 1], [1, 2]])
  end

  it 'will not go too far right or down' do
    expect{knight.find_targets(7,7)}.to change{knight.targets}.from([]).to([[5, 6], [6, 5]])
  end
end