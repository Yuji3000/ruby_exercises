require 'rspec'
require './lib/million.rb'

RSpec.describe 'duplicate_numbers' do
  it 'returns only numbers that are in all three arrays' do
    nums_1 = [1, 2, 4, 5, 8]
    nums_2 = [2, 3, 5, 7, 9]
    nums_3 = [1, 2, 5, 8, 9]

    expect(duplicate_numbers(nums_1, nums_2, nums_3)).to eq([2, 5])
  end

  it 'returns duplicate numbers including negative integers' do
    nums_1 = [-1, 2, 4, 5, 8]
    nums_2 = [-1, 3, 5, 7, 9]
    nums_3 = [-1, 2, 5, 8, 9]

    expect(duplicate_numbers(nums_1, nums_2, nums_3)).to eq([-1, 5])
  end
end