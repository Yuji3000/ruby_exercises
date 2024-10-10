class Pirate
  attr_reader :name,
              :job,
              :booty
  def initialize(name, job = "Scallywag")
    @name = name
    @counter = 0
    @job = job
    @booty = 0
  end

  def cursed?
    if @counter >= 3
      true
    else
      false
    end
  end

  def commit_heinous_act
    @counter += 1
  end

  def rob_ships(num_of_ships)
    @booty += 100
  end
end