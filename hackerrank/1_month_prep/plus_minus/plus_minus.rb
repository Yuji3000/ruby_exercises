# https://www.hackerrank.com/challenges/one-month-preparation-kit-plus-minus/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one


def plusMinus(arr)
  # Write your code here
  hash = Hash.new { |hash, key| hash[key] = [] }

  arr.each do |num|
      if num.positive?
        hash["positive"] << num
      elsif num.negative?
        hash["negative"] << num
      else 
        hash['zero'] << num
      end
  end
  require 'pry'; binding.pry
  p "%.6f" % ((hash["positive"].count).to_f / arr.length)
  p sprintf("%.6f", (hash["negative"].count).to_f / arr.length)
  p sprintf("%.6f", (hash["zero"].count).to_f / arr.length)
end

arr = [-4, 3, -9, 0, 4, 1]
p plusMinus(arr)

# expect 
# positive = 0.500000
# negative = 0.333333
# zero = 0.166667