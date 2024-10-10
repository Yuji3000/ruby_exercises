def fizz_buzz(input)
  (1..input).map do |number|
    fizz = number % 3 == 0 
    buzz = number % 5 == 0 

    if fizz && buzz
      "Fizzbuzz"
    elsif fizz
      "Fizz"
    elsif buzz 
      "Buzz"
    else
      number
    end
  end
end

def hashed_fizz_buzz(input)
  hash = {}
  (1..input).map do |number|
    fizz = number % 3 == 0 
    buzz = number % 5 == 0 
    if fizz && buzz
      hash[number] = "FizzBuzz"
    elsif fizz
      hash[number] = "Fizz"
    elsif buzz 
      hash[number] = "Buzz"
    else
      hash[number] = number
    end
  end
  return hash
end