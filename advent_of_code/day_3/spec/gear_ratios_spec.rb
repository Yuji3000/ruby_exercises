require './lib/gear_ratios'

RSpec.describe "Gear Ratios Method" do
  it "should the sum of part numbers that are adjacent to a symbol" do
    input = '467..114..
    ...*......
    ..35..633.
    ......#...
    617*......
    .....+.58.
    ..592.....
    ......755.
    ...$.*....
    .664.598..'

    expect(gear_ratios(input)).to eq(4361)
  end
end