class Centaur
  attr_reader :name, :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @run = 0
    @shoot_count = 0
    @laying = false
    @sleep = false
    @drank_potion = false
  end

  def shoot
    if self.cranky? == false && @standing == true && @laying == false
      @shoot_count += 1
      return "Twang!!!"
    elsif self.cranky? == true || @laying == true
      return 'NO!'
    end
  end

  def run
    if @laying == false
      @run += 1
      return 'Clop clop clop clop!'
    elsif @laying == true
      return 'NO!'
    end
  end

  def cranky?
    if @run + @shoot_count < 3 || @sleep == true
      @cranky = false
      return @cranky
    elsif @run + @shoot_count >= 3
      @cranky = true
      return @cranky
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == true
      return "NO!" 
    elsif @standing == false
      @run = 0
      @shoot_count = 0
      @sleep = true
      return true
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drinks_potion
    @drank_potion = true if @standing == true
  end

  def rested?
    if @drank_potion == true
      return true
    elsif @drank_potion == false
      return false
    end
  end

  def sick?
    if self.rested? == true
      return true
    end
  end
end