class Lion
  attr_reader :name,
              :sound
  def initialize(data)
    @name = data[:name]
    @sound = data[:sound]
  end
end