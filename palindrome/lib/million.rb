# require 'pry'
# Instructions
# You are given three arrays of equal size. Each array has 1 million RANDOM integer values.

# Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.

# Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.

# Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.

# Small Scale Example Below

#     #Ruby
#     nums_1 = [1, 2, 4, 5, 8]
#     nums_2 = [2, 3, 5, 7, 9]
#     nums_3 = [1, 2, 5, 8, 9]
#     find_matches(nums_1, nums_2, nums_3)
#     => [2, 5]

# nums_1 = [1, 2, 4, 5, 8]
# nums_2 = [2, 3, 5, 7, 9]
# nums_3 = [1, 2, 5, 8, 9]

def duplicate_numbers(num1, num2, num3)
  new_array = []
  num1.map do |i|
    if num2.include?(i) && num3.include?(i)
      new_array << i
    end
  end
  return new_array
end

  # p new_array




  #this is trying to find duplicates within one array
# random = [1, 2, 4, 67, 77, 2]
# dup = []
#     random.each do |element|
#       dup << element if random.count(element) > 1
#     end
 
# random.each do |num|

# p dup.uniq