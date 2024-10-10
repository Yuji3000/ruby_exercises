class TrickOrTreater
  attr_reader :costume
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def bag
    @bag
  end

  def empty?
    @bag.candies.empty?
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.candies.pop
  end
end