# https://www.hackerrank.com/challenges/ruby-enumerable-each-with-index/problem?isFullScreen=false




def skip_animals(animals, skip)
  animals.each_with_index.map do |animal, index| 
    next if (index + 1) <= skip
    "#{index}:#{animal}"
  end.compact
end


p skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)
# => ["2:fox", "3:wolf"]