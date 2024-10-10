require "./calibrater.rb"

RSpec.describe "Calibrater" do
  it "counts strings as numbers also" do
  mock_data = 
  "two1nine
  eightwothree
  abcone2threexyz
  xtwone3four
  4nineeightseven2
  zoneight234
  7pqrstsixteen"
  
  expect(calculate_sum_of_calibrated_values()).eq (281)

  end

end