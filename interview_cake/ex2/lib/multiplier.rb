module Multiplier
  def self.get_products_of_all_ints_except_at_index(array)
    new_array = []

    array.each_with_index do |val, index|
      array.delete_at(index)
      new_array << array.inject(&:*)
      array.insert(index, val)
    end

    new_array
  end
end