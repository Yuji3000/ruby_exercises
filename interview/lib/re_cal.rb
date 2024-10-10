def receipt_award_amounts(submission)
  saver_id = submission["receipt_submission"]["receipt"]["saver_id"]
  receipt_items_array = submission["receipt_submission"]["receipt"]["receipt_items"]
  rewards_array = submission["receipt_submission"]["rewards"]
  receipt_award_amount = 0
  
  receipt_items_array.each do |item|
    rewards_array.each do |reward|
      if item["product_code"] == reward["product_code"]
        receipt_award_amount += item["quantity"] * reward["amount_cents"]
      end
    end
  end
    {
      "saver_id" => saver_id,
      "receipt_award_amount" => receipt_award_amount.to_f / 100
    }
end

def all_rewards(data)
  a = data.map do |submission|
    receipt_award_amounts(submission)
  end
end