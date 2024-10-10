
arr = [[1, 20], [9, 19]]

def arrayer(arr)
  arr.each do |element|
    (element[0]...element[1]).each do |num|
      count = 0
      if num.digits.length == 1 
        count += 1
      elsif num.digits.length >= 2
          num_array = num.to_s.chars.map(&:to_i)
          if num_array.uniq == num_array.length
            count += 1
          end
      end
      return count
    end
  end
end

n = 10
def lottery_coupons(n)
  sum_array = []
  (1..n).each do |num|
    # require 'pry'; binding.pry
    if num.digits.length == 1
      sum_array << num
    elsif num.digits.length >= 2
      sum_num = num.to_s.chars.map(&:to_i).sum
      sum_array << sum_num
    end
  end
  return sum_array
end

p lottery_coupons(n)