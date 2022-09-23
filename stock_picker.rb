# stock-price data
stock_prices = [17,3,6]

# stock picker method
def stock_picker(stock_prices)
  
  index_to_remove = []
  buy_prices = stock_prices
  profit = []
  stock_prices.each_with_index do |sell_price, sell_index| 
    buy_prices_filter = []
      p "Sell price $#{sell_price} + index: #{sell_index}"
    buy_prices.each_with_index do |buy_price, buy_index|
      
      p "Buy price $#{buy_price} + index: #{buy_index}"
      
      if buy_index < sell_index
      
        buy_prices_filter << buy_price
      end
      
    end
    p buy_prices_filter
      buy_prices_filter.each do |price| 
        profit << sell_price - price
      end
    p profit
  end
end

stock_picker(stock_prices)
