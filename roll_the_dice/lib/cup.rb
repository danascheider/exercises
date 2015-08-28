require_relative 'die'

class Cup
  def initialize number_of_dice
    @dice = []
    number_of_dice.times { @dice << Die.new }
  end

  def roll_dice
    values = []
    @dice.each {|die| values << die.roll }
    values
  end

  def probability
    return 1.quo(6.0).round(4) if @dice.size == 1
    (@dice.map(&:probability).inject(&:*) * @dice.size * (@dice.size - 1)).round(4)
  end
end