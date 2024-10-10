class Dragon
  attr_reader :name,
              :rider,
              :color
  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @count = 0

  end

  def hungry?
    if @count >= 3
      false
    else
      true
    end
  end

  def eat
    @count += 1
  end
end