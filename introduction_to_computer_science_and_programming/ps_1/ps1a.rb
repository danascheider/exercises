require_relative './financial_calculator'

print "Enter the outstanding balance on your credit card: "
balance = gets.chomp.to_f
print "Enter the annual credit card interest rate as a decimal: "
apr = gets.chomp.to_f
print "Enter the minimum monthly payment rate as a decimal: "
payment_rate = gets.chomp.to_f

calculator = FinancialCalculator.new(balance, apr, payment_rate)

total = 0

(1..12).each do |i|
  min, principal = calculator.minimum_payment, (calculator.minimum_payment - calculator.interest_this_month)

  puts "Month: #{i}"
  puts "Minimum monthly payment: $#{min.round(2)}"
  puts "Principal paid: $#{principal.round(2)}"
  puts "Remaining balance: $#{calculator.make_minimum_payment.round(2)}"

  total += min
end

puts "RESULT"
puts "Total amount paid: $#{total.round(2)}"
puts "Remaining balance: $#{calculator.balance.round(2)}"