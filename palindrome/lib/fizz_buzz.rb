def fizz_buzz(n)
  (1..n).map do |number|
    fizz = number % 3 == 0
    buzz = number % 5 == 0

    if fizz && buzz
     puts "FizzBuzz"
    elsif fizz
     puts "Fizz"
    elsif buzz
     puts "Buzz"
    else
     puts number
    end
  end
end

# p fizz_buzz(3)

