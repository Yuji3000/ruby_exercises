class LeatherChair
  def initialize(faded = false)
    @faded = faded
  end
  
  def faded?
    @faded
  end

  def expose_to_sunlight
    @faded = true
  end
end