class Werewolf
  attr_reader :name,
              :location
  def initialize(name, location = "")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @eaten = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    if @human == true
      @human = false
      @wolf = true
    else
      @human = true
      @wolf = false
    end
  end

  def hungry?
    if @wolf == true && @eaten == false
      @hungry = true
    elsif @wolf == true && @eaten == true
      @hungry = false
    else
      @hungry
    end
  end

  def consumes_victim(victim)
    if @human == false
      victim.status = :dead
      @eaten = true
    end
  end

end