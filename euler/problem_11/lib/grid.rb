class Grid < Array 
  def each_col &block
    for i in 0..[0].count
      col = map {|row| row[i] }
      yield col
    end
  end

  def rotate
    grid = Grid.new []

    col_zero = map {|row| row[0] }
    grid << [col_zero[-1]]
    
  end
end