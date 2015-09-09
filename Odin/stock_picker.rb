def stock_picker(prices)
  min = 0
  max = 0
  max_profit = 0

  if prices.count < 2
    puts "Not enough data"
  else
    prices[0..-2].each_with_index do | buy, i |
      prices[(i+1)..-1].each_with_index do | sell, j |
        if sell - buy > max_profit
          max_profit = sell - buy
          min = i
          max = j + i + 1
        end
      end
    end
  end

  return "You should buy #{min+1} day and sell #{max+1} day for max profit #{max_profit}."
end


puts stock_picker([6,2,12,1,105,1,13,56])

puts stock_picker([17,3,6,9,15,8,6,1,10])
