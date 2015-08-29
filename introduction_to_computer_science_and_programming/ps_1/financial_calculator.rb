class FinancialCalculator
  attr_accessor :balance
  attr_reader :apr, :min_rate

  def initialize balance, apr, min_rate
    @balance, @apr, @min_rate = balance, apr, min_rate
  end

  def compound
    @balance *= (1 + monthly_interest_rate)
  end

  def make_minimum_payment
    @balance -= min_principal_payment
    balance
  end

  def min_principal_payment
    minimum_payment - interest_this_month
  end

  def interest_this_month
    balance * monthly_interest_rate
  end

  def monthly_interest_rate
    rate = apr.quo(12)
  end

  def minimum_payment
    (balance * min_rate).round(2)
  end
end
