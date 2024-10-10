require 'rspec'
require './lib/next_palindrome.rb'

RSpec.describe "palindrome?" do
  it 'checks if an integer is a palindrome' do
    expect(palindrome?(11)).to eq(true)
    expect(palindrome?(10)).to eq(false)
    expect(palindrome?(11311)).to eq(true)
    expect(palindrome?(123)).to eq(false)
  end

  it 'finds the next palindrome' do
    expect(next_palindrome(101)).to eq(111)

  end
end