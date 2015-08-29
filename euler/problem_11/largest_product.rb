class Multiplier
  def initialize grid
    @grid = grid
  end

  def diagonal row_index, col_index
    diagonal = nil

    if row_index < @grid.length - 1 && col_index < @grid[0].length - 1
      diagonal = @grid[row_index + 1][col_index + 1]
    end

    diagonal
  end

  def largest_col_product
    product = 1

    for i in 1..@grid[0].length - 1
      col = @grid.map {|n| n[0] }
      col_product = col.inject(1, &:*)
      product = col_product if col_product > product
    end

    product
  end

  def largest_row_product
    product = 1

    @grid.each do |row|
      row_product = row.inject(1, &:*)
      product = row_product if row_product > product 
    end

    product
  end

  def get_largest_product
    product = [largest_row_product, largest_col_product].max

    @grid.each do |row|
      row_index = @grid.index row

      row.each do |val|
        col_index = row.index val
        to_multiply = [val]

        to_multiply << diagonal(row_index, col_index)
        to_multiply << diagonal(row_index + 1, col_index + 1)
        to_multiply << diagonal(row_index + 2, col_index + 2)

        if to_multiply.compact.length == 4
          sum = to_multiply.inject(1, &:*)
          product = sum if sum > product
        end
      end
    end

    product
  end
end
