class Pills
  def initialize
    @pill_amount = 60
  end

  def count
    @pill_amount
  end

  def pop
    @pill_amount -= 1
  end
end