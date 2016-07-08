module ProfitCalculator
  def self.get_max_profit(stock_prices)
    stock_prices.last - stock_prices.first
  end
end