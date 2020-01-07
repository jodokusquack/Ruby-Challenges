def stock_picker(prices)
  profit = 0
  buy_day = 0
  sell_day = 0
  prices.each_with_index do |buy_price, i|
    prices[i+1..-1].each_with_index do |sell_price, j|
      if (sell_price - buy_price) > profit
        buy_day = i
        sell_day = j+i+1
        profit = sell_price - buy_price
      end
    end
  end
  if profit > 0
    return [buy_day, sell_day, profit]
  else
    return "No profit can be made."
  end
    
end

puts stock_picker([1,25,5,5,45,5,6,20,1])