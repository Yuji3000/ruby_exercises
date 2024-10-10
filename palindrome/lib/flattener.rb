

=begin
while checking through the array. 
if there is an integer, put that integer into a new array.
if there is another array, must go deeper to find the integer then
put that into a new array

initial thoughts
- may be able to take array
or use each_char to remove all the characters and then place them in an array
=end

def flatten_array(nested_array)
  return_array = []
  nested_array.each do |element|
   
    if element.class == Array
      str_array = element.to_s
      remove_left = str_array.gsub("[", "")
      remove_right = remove_left.gsub("]", "")
      split_numbers = remove_right.split(",")
      split_numbers.each do |number|
        if number.match?(/[[:alpha:]]/)
          return_array << number.strip.delete("\"")
        elsif number.match?(/[[:digit:]]/)
          return_array << number.strip.to_i
        end
      end
    else
      return_array << element
    end
  end
  return return_array
end



# works only with integers
# def flatten_array(arrays)
#   str_array = arrays.to_s
#   new_array = []
#   remove_left = str_array.gsub("[", "")
#   remove_right = remove_left.gsub("]", "")
#   split_numbers = remove_right.split(",")
#   split_numbers.each do |number|
#     require 'pry'; binding.pry
#     new_array << number.to_i
#   end
#   return new_array
# end

