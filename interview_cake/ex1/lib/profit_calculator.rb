module ProfitCalculator
  def self.get_max_profit(stock_prices)
    buy_price  = stock_prices[0..-2].min
    buy_index  = stock_prices.find_index(buy_price)
    sell_price = stock_prices[buy_index + 1..-1].max

    sell_price - buy_price
  end
end