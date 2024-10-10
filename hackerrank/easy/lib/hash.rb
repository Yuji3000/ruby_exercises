# https://www.hackerrank.com/challenges/ruby-hash-initialization/problem?isFullScreen=true

# Initialize 3 variables here as explained in the problem statement
empty_hash = Hash.new
default_hash = Hash.new(1)

hackerrank = {"simmy" => 100, "vivmbbs" => 200} 

# https://www.hackerrank.com/challenges/ruby-hash-add-del-sel/problem?isFullScreen=true

hackerrank.store(543121, 100)

hackerrank.keep_if { |key, value| key.is_a?(Integer)}

hackerrank.delete_if { |key, value| key.even? }