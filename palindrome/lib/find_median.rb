#using an array as input(arr)
#return the median value of that array



def find_median(arr)
  sorted = arr.sort
  mid = sorted.count / 2
  return sorted[mid]
end

arr = [5, 3, 1, 2, 4]
p find_median(arr)