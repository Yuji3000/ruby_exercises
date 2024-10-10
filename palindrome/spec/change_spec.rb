require 'rspec'
require './lib/change.rb'

RSpec.describe "make_change" do
  it 'makes change into quaters, dimes, nickels, and pennies' do
    expect(make_change(41)).to eq([1, 1, 1, 1])
  end
end