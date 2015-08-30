class Printer
  def initialize n 
    @orig = n
  end

  def print_sequence number=@orig
    return if number < 0

    puts number
    print_sequence number - 1
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