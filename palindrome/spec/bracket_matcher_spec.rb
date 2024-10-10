require "rspec"
require './lib/bracket_matcher'

RSpec.describe "bracket" do
  it 'checks if brackets match' do
    expect(bracket('{}')).to eq(true)
    expect(bracket('{()}')).to eq(true)
    expect(bracket('({[]}{[]})')).to eq(true)
    expect(bracket('{(')).to eq(false)
    expect(bracket('{[)][]}')).to eq(false)
  end
end




# Instructions
# Create a method/function that will intake a set of brackets
#  [ { ( as a string and determine if the brackets are well-formed (match).
#    Brackets can be nested.

#     bracket('{}')
#     // => true

#     bracket('{()}')
#     // => true

#     bracket('({[]}{[]})') 
#     // => true
    
#     bracket('{(')
#     // => false
    
#     bracket('{[)][]}')
#     // => false
    
#     bracket(']')
#     // => false