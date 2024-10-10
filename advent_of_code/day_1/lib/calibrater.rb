def calculate_sum_of_calibrated_values
  file_content = File.read(File.join(__dir__, "../test.txt"))
  input_array = file_content.split

  # mapper = {
  #   "one" => "1",
  #   "two" => "2",
  #   "three" => "3",
  #   "four" => "4",
  #   "five" => "5", 
  #   "six" => "6",
  #   "seven" => "7",
  #   "eight" => "8",
  #   "nine" => "9"
  # }
  # storage = ""
  # input_array.each do |line|
  #   line.chars.each do |char| 
  #     # require 'pry'; binding.pry
  #     temp_string = ''
  #     require 'pry'; binding.pry
  #     if char.match?(/[[:digit:]]/)
  #       storage << char
  #     else
  #       temp_string << char
  #     end

  #     if mapper[temp_string] 
  #       storage << mapper[temp_string]
  #       temp_string = ''
      
  #     end
  #   end
  # end







  nums_only = input_array.map do |line|
    split_line = line.split("")
    split_line.select do |char|
      char.match?(/[[:digit:]]/)
    end
  end

  sum = 0
  calibrate_values = nums_only.map do |num_arry|
    sum += (num_arry[0] + num_arry[-1]).to_i  if num_arry.length >= 2
    sum += (num_arry[0] + num_arry[0]).to_i  if num_arry.length == 1
  end
  sum
end

def try(input)
  mapper = {
    "one" => "1",
    "two" => "2",
    "three" => "3",
    "four" => "4",
    "five" => "5", 
    "six" => "6",
    "seven" => "7",
    "eight" => "8",
    "nine" => "9"
  }
  storage = ""
  temp_string = ''


    input.chars.each do |char| 
      # require 'pry'; binding.pry
      # require 'pry'; binding.pry
      if char.match?(/[[:digit:]]/)
        storage << char
        if temp_string != ""
          if mapper[temp_string]
            storage << mapper[temp_string]
          end
          temp_string = ''
          
        end
      else
        temp_string << char
      end
    end
    require 'pry'; binding.pry
end

puts try("two1nine")
# expect to eq 281

