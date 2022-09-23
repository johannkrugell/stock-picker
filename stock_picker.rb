# stock-price data
stock_prices = [17,3,2]

# stock picker method
def stock_picker(stock_prices)
  buy_prices = stock_prices
  profit = []
  
  stock_prices.each_with_index do |sell_price, sell_index| 
    buy_prices_filter = []
    p "Sell price $#{sell_price} + index: #{sell_index}"
  
    buy_prices.each_with_index do |buy_price, buy_index| 
      if buy_index < sell_index
        p "Buy price $#{buy_price} + index: #{buy_index}"
        p buy_prices_filter << ["#{buy_index}:#{sell_index}",sell_price - buy_price]
      end
    end
     profit << buy_prices_filter
     p profit
  end
end

stock_picker(stock_prices)
