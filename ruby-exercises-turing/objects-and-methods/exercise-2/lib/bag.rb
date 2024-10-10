class Bag
  attr_reader :candies,
              :hand
  def initialize
    @candies = []
    @hand = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(candy)
    array = []
    a = @candies.find do |type|
      if type.type == candy
        array << type
      end
    end
    return true if array.count > 0
    return false if array.count == 0
  end

  def grab(candy)
    @candies.find do |name|
      if name.type == candy
        @candies.delete(name)
      end
    end
  end

  def take(number)
    number.times do
      a = @candies.pop
      @hand << a
    end
    return @hand
  end

  # def type
  #   require 'pry'; binding.pry
  # end
end