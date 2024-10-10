require 'rspec'
require './lib/longest_consecutive'

RSpec.describe "longest_consecutive" do
  it "should return an integer for the longest consecutive sequence" do
    nums = [100,4,200,1,3,2]
    expect(longest_consecutive(nums)).to eq(4)
    
    nums = [-1, -1, 0, 1, 3, 4, 5, 6, 7, 8, 9]
    expect(longest_consecutive(nums)).to eq(7)
    
    nums = [1,2,0,1]
    expect(longest_consecutive(nums)).to eq(3)
  end
end
