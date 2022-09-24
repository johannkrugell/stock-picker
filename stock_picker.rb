# stock-price data
stock_prices = [17,3,6,9,15,8,6,1,10]

# stock picker method
def stock_picker(stock_prices)
  buy_prices = stock_prices
  profit = []
  
  stock_prices.each_with_index do |sell_price, sell_index| 
    buy_prices_filter = []
    #p "Sell price $#{sell_price} + index: #{sell_index}"
  
    buy_prices.each_with_index do |buy_price, buy_index| 
      if buy_index < sell_index
        #p "Buy price $#{buy_price} + index: #{buy_index}"
        buy_prices_filter << ["#{buy_index}:#{sell_index}",sell_price - buy_price]
        profit << buy_prices_filter.to_h
        buy_prices_filter.clear    
        end
    end
     # profit << buy_prices_filter.to_h
     profit.flatten
  end
  hash = profit.reject { |day| day.empty? }
  hash =  hash.reduce Hash.new, :merge
  p hash.max_by { |day, profit| profit }
end

stock_picker(stock_prices)
