require_relative 'grid'

class Multiplier
  attr_reader :grid, :grouping

  def initialize grid, grouping
    @grid, @grouping = grid, grouping
  end

  def diagonal_from row_index, col_index
    diagonal = []

    grouping.times do |n|
      diagonal << grid[row_index + (n - 1)][col_index + (n - 1)] if grid[row_index + (n - 1)]
    end

    diagonal.compact.count == grouping ? diagonal.inject(1, &:*) : nil
  end

  def largest_product array
    product = 1

    array.each_cons(grouping) do |group|
      pr = group.inject(1, &:*)
      product = pr if pr > product
    end

    product
  end

  def largest_col_product
    product = 1

    grid.each_col do |col|
      pr = largest_product(col)
      product = pr if pr > product
    end

    product
  end

  def largest_diagonal_product
    product = 1

    grid.each do |row|
      row.each do |col|
        next if (pr = diagonal_from(grid.index(row), row.index(col))) == nil
        product = pr if pr > product
      end
    end

    product
  end

  def largest_row_product
    product = 1

    grid.each do |row|
      pr = largest_product(row)
      product = pr if pr > product
    end

    product
  end

  def get_largest_product
    [largest_row_product, largest_col_product, largest_diagonal_product].max
  end
end
