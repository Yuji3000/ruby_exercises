def neg_pos(arr, index)
  # return the element of the array at the position `index` from the end of the list
  # Clue : arr[-index]
  arr[-index]
end

def first_element(arr)
  # return the first element of the array
  arr.first
end

def last_element(arr)
  # return the last element of the array
  arr.last
end

def first_n(arr, n)
  # return the first n elements of the array
  arr.take(n)
end

def drop_n(arr, n)
  # drop the first n elements of the array and return the rest
  arr.drop(n)
end

# https://www.hackerrank.com/challenges/ruby-array-addition/problem?isFullScreen=true

def end_arr_add(arr, element)
  # Add `element` to the end of the Array variable `arr` and return `arr`
  arr.push(element)
end

def begin_arr_add(arr, element)
  # Add `element` to the beginning of the Array variable `arr` and return `arr`
  arr.unshift(element)
end

def index_arr_add(arr, index, element)
  # Add `element` at position `index` to the Array variable `arr` and return `arr`
  arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
  # add any two elements to the arr at the index
  arr.insert(index, 4, 8)
end

# https://www.hackerrank.com/challenges/ruby-array-deletion/problem?isFullScreen=true

def end_arr_delete(arr)
  # delete the element from the end of the array and return the deleted element
  arr.pop
end

def start_arr_delete(arr)
  # delete the element at the beginning of the array and return the deleted element
  arr.shift
end

def delete_at_arr(arr, index)
  # delete the element at the position #index
  arr.delete_at(index)
end

def delete_all(arr, val)
  # delete all the elements of the array where element = val
  arr.delete(val)
end

# https://www.hackerrank.com/challenges/ruby-array-selection/problem?isFullScreen=true

def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
    arr.select { |element| element.odd? }
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
    arr.reject { |element| element % 3 == 0 }
end

def delete_arr(arr)
  # delete all negative elements
    arr.delete_if { |a| a > 0 }
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
    arr.keep_if { |a| a >= 0 }
end