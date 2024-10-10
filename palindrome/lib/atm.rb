# def up_array(arr)
#   array = []
#   arr.each do |element|
#     array << element.to_s
#   end 
#   new_value = array.join.to_i + 1
  
#   a = new_value.digits.reverse
#   require 'pry'; binding.pry
#   # new_value.map do |num|
#   #   num
#   # end
# end



# array = [4, 2]
# puts up_array(array)



# str = "ab"


# def has_unique_chars(str)
#   # require 'pry'; binding.pry
#   if str.chars.uniq.length == str.length
#     return true
#   else
#     return false
#   end
# end

# def maskify(cc)
#   if cc.length < 4
#     return cc
#   else
#     masked = []
#     char_array = cc.chars
#     a = char_array[0..-5]
#     last_4_digits = char_array[-4..-1]
#     a.length.times do
#       masked << "#"
#     end
#     a = masked.join(', ')
#     clean_mask = a.delete(", ")
#     b = last_4_digits.join(', ')
#     clean_last_4 = b.delete(", ")

#     return clean_mask + clean_last_4
#   end

# end
# cc = "4556364607935616"
# puts maskify(cc)

# def get_middle(s)
#   require 'pry'; binding.pry
#   if s.length.even?
#     return s[s.length/2-1] + s[s.length/2]
#   else
#     return s[s.length/2]
#   end
# end
# string = "a"
# puts get_middle(string)

#bills_available [100, 50 and 20]
# 40 < amount < 10,000
# def withdraw(amount)
#   # if amount > 100
#   #   hundred = amount.divmod(100)
#   #   fifty = hundred[1].divmod(50)
#   #   twenty = fifty[1].divmod(20)
#   #   return [hundred[0], fifty[0], twenty[0]]
#   # end
#   hundred = amount.divmod(100)
#   if hundred[1] % 50 == 0
#     fifty = hundred[1].divmod(50)
#     if fifty[1] % 50 == 0
#       twenty = fifty[1].divmod(20)
#       return [hundred[0], fifty[0], twenty[0]]
#     elsif fifty[1] % 50 != 0
#       twenty = hundred[1].divmod(20)
#       return [hundred[0], 0, twenty[0]]
#     end
#   elsif hundred[1] % 50 != 0
#     twenty = hundred[1].divmod(20)
#     return [hundred[0], 0, twenty[0]]
#   end

  
# end



# amt = 230
# puts withdraw(amt)
# arr = [5, 7, 4]
# def up_array(arr)
#  add_array = arr.map do |element|
#   element.to_s
#  end 
#  new_value = add_array.join.to_i + 1
#  reverse_new_value = new_value.digits.reverse
#  return new_value.digits.reverse
# end

# puts up_array(arr)
# class ATM
#   attr_reader :bills
#   def initialize()
#       @bills = [0, 0, 0, 0, 0]
#   end

# # denominations are = [$20, $50, $100, $200, $500]

#   def deposit(banknotes_count)
#       banknotes_count.each_with_index do |val, i|
#         @bills[i] += val
#       end
#   end



#   def withdraw(amount)
#     nums = [20,50,100,200,500]
#     bills = @bills.dup
#     arr = []
#     i = 4

#     until nums.empty?
#         k = 0
#         num = nums.pop

#         n = [amount/num, bills[i]].min
#         amount -= num * n
#         bills[i] -= n
#         k += n

#         arr.unshift(k)
#         i -= 1
#     end

#     return [-1] if amount != 0

#     deposit(arr.map { |n| -n })
#     arr

#   end


# end


def withdraw(amount)
  if amount >= 40 && amount <= 10000
    hundred = amount.divmod(100)
    if hundred[1] % 50 == 0
      fifty = hundred[1].divmod(50)
      if fifty[1] % 50 == 0
        twenty = fifty[1].divmod(20)
        return [hundred[0], fifty[0], twenty[0]]
      elsif fifty[1] % 50 != 0
        twenty = hundred[1].divmod(20)
        return [hundred[0], 0, twenty[0]]
      end
    elsif hundred[1] % 50 != 0
      twenty = hundred[1].divmod(20)
      return [hundred[0], 0, twenty[0]]
    end
  end
end


amt = 40
puts withdraw(amt)