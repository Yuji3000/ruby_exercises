require 'rspec'
require './lib/flattener'


RSpec.describe "flatten" do
  it 'can flatten nested arrays and return one single array' do

    nums = [1, [[4], 5], 1]
    # # nums = [1, 2, 3, [[4], 5], [[[6]]]]
    expect(flatten_array(nums)).to eq([1, 4, 5, 1])

    words = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]]
    expect(flatten_array(words)).to eq(["hi", "this is", "string", "that is very", "nested"])
  end
end



#can return various data types mixed togeather




# Instructions
# In Ruby and JavaScript, there is a built in method/function to flatten arrays,
#  meaning it makes them one-dimensional. Below are examples of both Ruby and JavaScript:

#     #Ruby
#     nums = [1, 2, 3, [[4], 5], [[[6]]]]
#     nums.flatten
#     => [1, 2, 3, 4, 5, 6]

#     #JavaScript
#     var nums = [ 0, 1, 2, [ 3, 4 ] ]
#     nums.flat()
#     => [ 0, 1, 2, 3, 4 ]
# Your goal is to recreate this functionality without using the built in method/function.
# You will be given a deeply nested array, or multi-dimensional array,
# that will look similar to either of the below:

#     nums = [1, 2, 3, [[4], 5], [[[6]]]]
#     words = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]]

# The contents of the array are not significant. Your method/function should take an 
# input of a multi-dimensional array and output a one-dimensional array. More simply put,
#  remove the deeply nested brackets to return a single array.