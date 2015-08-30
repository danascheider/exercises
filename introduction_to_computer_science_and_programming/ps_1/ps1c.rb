require_relative 'financial_calculator'

print "Enter the outstanding balance on your credit card: "
balance = gets.chomp.to_f
print "Enter the annual credit card interest rate as a decimal: "
apr = gets.chomp.to_f

calculator = FinancialCalculator.new(balance, apr, 0.02)

lower_bound = balance.quo(12)
upper_bound = balance * (1 + apr)
tolerance   = 0.01
n           = 1

while n < 10 ** 6 # cap possible number of iterations
  amount = (lower_bound + upper_bound).quo(2)

  12.times { calculator.make_payment amount }

  if calculator.balance === 0 or (upper_bound - lower_bound).quo(2) < tolerance
    break
  end

  n += 1

  if calculator.balance < 0
    upper_bound = amount
  else 
    lower_bound = amount
  end

  calculator.balance = balance
end

puts "RESULT"
puts "Monthly payment to pay off debt in 1 year: #{amount.round(2)}"
puts "Balance: #{calculator.balance.round(2)}"