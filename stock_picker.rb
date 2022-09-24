# stock-price data
stock_prices = [17,3,6,9,15,8,6,1,10]

# method returns the index of the buy price, sell price and max profit
def stock_picker(stock_prices)
  profit = []
  
  # for each sell price find the buy price, calc profit 
  stock_prices.each_with_index do |sell_price, sell_index| 
    stock_prices.each_with_index.select { |buy_price, buy_index| 
      if buy_index < sell_index 
        profit << ["#{buy_index}:#{sell_index}",sell_price - buy_price]
      end
    }
  end
  
  profit.to_h.max_by { |day, profit| profit }
end

p stock_picker(stock_prices)
