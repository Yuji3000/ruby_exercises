require "rspec"
require "./lib/change_machine"

RSpec.describe "change_machine" do
  it "can give change for 67 cents" do
    input = 67
    expect(change_machine(input)).to eq([2, 1, 1, 2])
  end

  it "can give change for 19 cents" do
    input = 19
    expect(change_machine(input)).to eq([0, 1, 1, 4])
  end

  it "can give change for 0 cents" do
    input = 0
    expect(change_machine(input)).to eq([0, 0, 0, 0])
  end

  it "will not give change for negative numbers" do
    input = -3
    expect(change_machine(input)).to eq("change input amount cannot be negative")
  end

  it "will give change for numbers greater than or equal to 100" do
    input = 106
    expect(change_machine(input)).to eq([4, 0, 1, 1])
  end

end