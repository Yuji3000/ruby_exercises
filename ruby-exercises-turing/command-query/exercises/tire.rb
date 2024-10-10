class Tire
  def initialize(flat = false)
    @flat = flat
  end

  def flat?
    @flat
  end

  def blow_out
    @flat = true
  end
end