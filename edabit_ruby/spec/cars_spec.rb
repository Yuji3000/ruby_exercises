require './lib/cars'

RSpec.describe 'cars' do
  it "calculates number of cars that can be built" do
    expect(cars(37, 15, 20)).to eq(9)
    expect(cars(72, 7, 21)).to eq(7)
    expect(cars(9, 44, 34)).to eq(2)
    expect(cars(50, 38, 7)).to eq(3)
    expect(cars(68, 9, 44)).to eq(9)
    expect(cars(3, 29, 54)).to eq(0)
    expect(cars(28, 34, 80)).to eq(7)
    expect(cars(88, 50, 83)).to eq(22)
    expect(cars(66, 18, 21)).to eq(10)
    expect(cars(97, 6, 10)).to eq(5)
    expect(cars(921, 310, 350)).to eq(175)
    expect(cars(736, 430, 851)).to eq(184)
    expect(cars(405, 379, 740)).to eq(101)
    expect(cars(593, 78, 389)).to eq(78)
    expect(cars(875, 370, 675)).to eq(218)
    expect(cars(863, 274, 203)).to eq(101)
  end
end