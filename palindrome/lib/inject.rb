# def inject
#   (1..3).inject(2) do  |product, n| 
#     product * n 
#   end
# end

array = [1, 1, 1]
def inject_method(array)
  array.inject do |sum, num|
    sum * num
  end
end
# p inject_method(array)



n = 1..3
def sum_terms(n)
  n.sum
end

# p sum_terms(n)
# 1 * 2 = 2
# 2 * 2 = 4
# 3 * 2 = 6
#12

def func_all(hash)
  # Check and return true if all the values within the hash are Integers and are < 10
  # If not all values satisfy this, return false.
  hash.values.all? do |value|
     value.is_a?(Integer) && value < 10 
  end
end

hash = {
  one: 11,
  two: 22
}
# p func_all(hash)





