class Die
  def initialize sides=6
    @sides = sides
  end

  def roll
    rand(1..@sides)
  end

  def probability
    1.quo(@sides.to_f)
  end
end
