# A palindrome is any number, word, or phrase that reads
#  the same forward as it does backward. In this challenge,
#   we are going to focus on palindromic numbers. 
#   For example, 12321 is a palindromic number, whereas 123 is not.

# Your goal is to write a method/function that takes in an integer and
#  returns the next palindrome. It is safe to assume you are 
#  working with only whole numbers, no decimals, and no negatives.

# Example

#     #Ruby
#     find_next_palindrome(100)
#     => 101

#     find_next_palindrome(101)
#     => 111


#     #JavaScript
#     findNextPalindrome(100)
#     => 101

#     findNextPalindrome(101)
#     => 111

def palindrome?(num)
  num == num.to_s.reverse.to_i
end

def next_palindrome(num)
  until palindrome?(num) == true
    (num...1000)
  end
end