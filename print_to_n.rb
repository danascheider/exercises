class Printer
  def initialize n
    @orig = n
  end

  def print_sequence beginning=0
    return if beginning > @orig

    puts beginning
    print_sequence beginning + 1
  end
end

number = 0

if ARGV[0]
  number = ARGV[0].to_i
else
  print "Please enter a number: "
  number = gets.chomp.to_i
end

printer = Printer.new number
printer.print_sequence