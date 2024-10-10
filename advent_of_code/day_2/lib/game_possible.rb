class GamePossible
  attr_reader :id_counter,
              :file_content
  def initialize
    @id_counter = 0
    @file_content = File.read(File.join(__dir__, "../input.txt")).split("\n")
    @thresholds = { "red" => 12, "green" => 13, "blue" => 14}
  end

  def parse_games
    @file_content.map { |line| line.split(/[:;]/) }
  end
  
# Part 1
  def add_ids
    games = parse_games

    games.each do |game|
      game_id = game[0].scan(/\d+/).first.to_i 

      valid_game = game[1..-1].all? do |round|
        round.split(",").all? do |color_info|
          number, color = color_info.strip.split(" ")
          number.to_i <= @thresholds[color]
        end
      end

      @id_counter += game_id if valid_game
    end

    @id_counter
  end

# Part 2
  def powers
    games = parse_games

    games.sum do |game|
      color_counts = { "red" => 0, "green" => 0, "blue" => 0 }
      game[1..-1].each do |round|
       round.split(/[;,]/).each do |r|
        number, color = r.strip.split(" ")
        number = number.to_i
        color_counts[color] = number if number > color_counts[color]
        end
      end
      color_counts["red"] * color_counts["green"] * color_counts["blue"]
    end
  end
end

game = GamePossible.new
puts game.powers