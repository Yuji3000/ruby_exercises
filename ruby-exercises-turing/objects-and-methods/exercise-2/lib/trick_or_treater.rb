class TrickOrTreater
  attr_reader :costume,
              :bag,
              :sugar_level
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
    @eaten = []
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    return true if @bag.candies.empty? == false
    return false if @bag.candies.empty? == true
  end

  def candy_count
    @bag.candies.count
  end

  def eat
    taken = @bag.candies.pop
    @eaten << taken
    @sugar_level += @eaten.last.sugar
  end
end