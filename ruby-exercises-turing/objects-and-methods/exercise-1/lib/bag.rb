class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    if @candies.count == 0
      return true
    else
      false
    end
  end

  def count
    @candies.count
  end

  def <<(candies)
    @candies << candies
  end

  def contains?(input)
    @candies.each do |candy|
      if candy.type == input
        return true
      else 
        return false
      end
    end
  end
end