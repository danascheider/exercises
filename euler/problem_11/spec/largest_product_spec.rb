require 'spec_helper'

describe Multiplier do 
  let(:multiplier) { Multiplier.new(grid) }
  let(:product) { 66_670_331 }
  let(:grid) {
    [[73, 15, 97, 92],
     [97, 39, 91, 61],
     [10, 67, 91, 46],
     [8, 84, 83, 74]]
  }

  describe 'get_largest_product method' do 
    it 'returns the correct sum' do 
      expect(multiplier.get_largest_product).to equal product
    end
  end
end