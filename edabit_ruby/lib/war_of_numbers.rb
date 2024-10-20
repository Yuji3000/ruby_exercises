# def war_of_numbers(arr)
#   even_nums = 0
#   odd_nums = 0

#   arr.each do |num|
#     num.even? ? even_nums += num : odd_nums += num
#   end
#   (even_nums - odd_nums).abs
# end


#refactor
def war_of_numbers(arr)
  even_nums, odd_nums = arr.partition(&:even?).map(&:sum)
  (even_nums - odd_nums).abs
end