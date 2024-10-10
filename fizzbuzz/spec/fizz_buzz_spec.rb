require 'rspec'
require './lib/fizz_buzz'

RSpec.describe "fizz_buzz" do
  it 'will return fizz when input is divisible by 3' do
    n = 3
    expect(fizz_buzz(n)).to eq([1, 2, "Fizz"])
  end

  it 'will return buzz if input is divisible by 5 only' do
    n = 5
    expect(fizz_buzz(n)).to eq([1, 2, "Fizz", 4, "Buzz"])
  end
  
  it 'will return fizzbuzz if input is divisible by 5 and 3' do
    n = 15
    expect(fizz_buzz(n)[14]).to eq("Fizzbuzz")
  end

  it 'can create a hashed fizzbuzz' do
    number = 25

    expect(hashed_fizz_buzz(number)).to eq({
          1=>1, 2=>2, 3=>"Fizz", 4=>4, 5=>"Buzz", 6=>"Fizz", 7=>7, 8=>8, 9=>"Fizz", 10=>"Buzz", 11=>11, 12=>"Fizz", 13=>13, 14=>14, 15=>"FizzBuzz", 16=>16, 17=>17, 18=>"Fizz", 19=>19, 20=>"Buzz", 21=>"Fizz", 22=>22, 23=>23, 24=>"Fizz", 25=>"Buzz"
    })
  end
end