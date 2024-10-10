def change_machine(input)
  if input.negative? == true
    return "change input amount cannot be negative"
  else
    quarters = input.divmod(25)
    dimes = quarters[1].divmod(10)
    nickels = dimes[1].divmod(5)
    pennies = nickels[1].divmod(1)

    return [quarters[0], dimes[0], nickels[0], pennies[0]]
  end
end

# def change_machine(input)
#   change_array = []

#   quarters = input.divmod(25)
#   change_array << quarters[0]

#   dimes = quarters[1].divmod(10)
#   change_array << dimes[0]

#   nickels = dimes[1].divmod(5)
#   change_array << nickels[0]

#   pennies = nickels[1].divmod(1)
#   change_array << pennies[0]

#   return change_array

# end