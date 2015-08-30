require_relative 'financial_calculator'

print "Enter the outstanding balance on your credit card: "
balance = gets.chomp.to_f
print "Enter the annual credit card interest rate as a decimal: "
apr = gets.chomp.to_f

calculator = FinancialCalculator.new(balance, apr, 0.02)

correct = false
payment = 10
duration = nil

while correct == false do 
  (1..12).each do |month|
    calculator.make_payment payment unless calculator.balance <= 0

    duration = month unless !!duration || calculator.balance > 0
  end

  if calculator.balance > 0
    calculator.balance = balance 
    payment += 10
  else
    correct = true
  end
end

months = 

puts "RESULT"
puts "Monthly payment to pay off debt in one year: #{payment}"
puts "Number of months needed: #{duration}"
puts "Balance: #{calculator.balance.round(2)}"