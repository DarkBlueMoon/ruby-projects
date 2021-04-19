# Takes in an array of stock prices, one for each day.
# Returns a pair of days representing the best day to buy
# and the best day to sell. Days start at 0.
# e.g.
# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(arr_of_prices)
  # Loop through array twice:
  #   Compare loop-1's stock price with loop-2's stock price
  #   Subtract the two and save the largest positive difference.

  day_to_buy = 0
  day_to_sell = 0
  highest_diff = 0

  arr_of_prices.each_with_index do |elem1, idx1|
    arr_of_prices.each_with_index do |elem2, idx2|
      if idx2 > idx1
        diff = elem2 - elem1
        
        if diff > highest_diff
          highest_diff = diff
          day_to_buy = idx1
          day_to_sell = idx2
        end
      end
    end
  end
  [day_to_buy, day_to_sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10])