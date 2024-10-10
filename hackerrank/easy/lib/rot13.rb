# https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem?isFullScreen=false

# Original text:

# Why did the chicken cross the road?
# Gb trg gb gur bgure fvqr!

# On application of ROT13,

# Jul qvq gur puvpxra pebff gur ebnq?
# To get to the other side!

def rot13(secret_messages)
  secret_messages.split("").map do |char|
    ordinal = char.ord
    require 'pry'; binding.pry
    if ordinal == 32
      32.chr
    else
      (ordinal + 13).chr
    end
  end.join
end

secret_messages = "Why did the chicken cross the road?
Gb trg gb gur bgure fvqr!"

p rot13(secret_messages)