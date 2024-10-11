# https://www.hackerrank.com/challenges/one-month-preparation-kit-mini-max-sum/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one

# Sample Input

# 1 2 3 4 5
# Sample Output

# 10 14
def miniMaxSum(arr)
  sorted = arr.sort
  max = sorted[1..-1].sum
  min = sorted[0..-2].sum

  print "#{min} #{max}"
end

p miniMaxSum([ 1, 2, 3, 4, 5])