class Ogre 
  attr_reader :name,
              :home
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
  end

  def encounter(input)
    input.encounter_counter += 1
    # require 'pry'; binding.pry
  end
end

class Human 
  attr_reader :name,
              :encounter_counter
  def initialize(name = "Jane")
    # require 'pry'; binding.pry
    @name = name
    @encounter_counter = 0
  end
end