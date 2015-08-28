class Multiplier
  def initialize grid
    @grid = grid
  end

  def get_largest_product
    @grid.flatten.sort
  end
end
