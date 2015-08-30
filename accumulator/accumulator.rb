class Array
  def accumulate &block
    new_arr = []

    each do |item|
      item = yield item
      new_arr << item
    end

    new_arr
  end
end