def countdown(num)
  if num < 0 
    return 
  end
  p num

  countdown(num - 1)
end

# countdown(12)

def factorial(num)
  reduced = num - 1 
  multiplied = num * reduced

  if num <= 0
    return multiplied
  else
    factorial(reduced)
  end


end

# factorial(3)

def reverse_string(string)
  new_array = []
  a = string.split("")
  string.length.times do
    new_array << a.pop
  end
  reversed_string = new_array * ""
  reversed_string
end

p reverse_string("backwards")

