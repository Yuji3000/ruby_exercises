
require "./lib/re_cal"
require "json"

RSpec.describe "main" do
  it 'should accept full exercise data and return rewards for all submissions' do
    
    data_json = File.read("full_exercise_data.json")
    data = JSON.parse(data_json)


    answer_json = File.read("full_exercise_answer.json")
    answer = JSON.parse(answer_json)

    

    expect(all_rewards(data)).to eq(answer)
  end
end