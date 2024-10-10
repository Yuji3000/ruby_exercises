require "rspec"
require "./lib/fizz_buzz"

RSpec.describe "FizzBuzz" do
  it "will return fizz if divisible by only 3" do
    n = 3

    expect(fizz_buzz(n)).to eq([1, 2, "Fizz"])
  end

  it 'will return buzz if input is divisible by 5 only' do
    n = 5
    expect(fizz_buzz(n)).to eq([1, 2, "Fizz", 4, "Buzz"])
  end

  it 'can create a hashed fizzbuzz' do
    n = 25

    expect(hashed_fizz_buzz(n)).to eq([1, 2, "Fizz", 4 , "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"])
  end
end