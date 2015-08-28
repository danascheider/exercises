require_relative 'lib/cup'

class RollTheDice
  def play
    prompt
    process_input
    output
  end

  def prompt
    puts "How many dice would you like to roll? "
  end

  def process_input
    @qty    = gets.chomp.to_i
    @cup    = Cup.new qty
    @values = [cup.roll_dice, cup.probability]
  end

  def output
    print "\nRolling #{@qty} #{@qty == 1 ? 'die' : 'dice'}...\n"
    print "#{@values[0].join(' ')} (Probability: #{@values[1]})\n\n"
  end
end