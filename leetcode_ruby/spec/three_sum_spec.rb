require "./lib/three_sum"

RSpec.describe "ThreeSum" do
  it "should return true if 3 numbers add up to zero or
  false if not" do
    expect(three_sum([0,1,1])).to eq([])
    # expect(three_sum([0,0,0])).to eq([0,0,0])
    # expect(three_sum([-1,0,1,2,-1,-4])).to eq([[-1,-1,2],[-1,0,1]])
  end
end