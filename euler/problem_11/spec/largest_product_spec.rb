require 'spec_helper'

describe Multiplier do 
  let(:multiplier) { Multiplier.new(grid) }
  let(:product) { 20_999_433 }

  describe 'get_largest_product method' do 
    context 'largest product is on a straight row' do 
      let(:grid) {
        [[73, 15, 97, 92],
         [97, 39, 91, 61],
         [10, 67, 91, 46],
         [8, 84, 83, 74]]
      }

      it 'returns the correct product' do 
        expect(multiplier.get_largest_product).to eql product
      end
    end

    context 'largest product is ona column' do 
      let(:grid) {
        [[99, 47, 61, 33],
         [99, 20, 82, 40],
         [99, 18, 81, 13],
         [99, 12, 90, 66]]
      }

      it 'returns the correct product' do 
        expect(multiplier.get_largest_product).to eql 99 ** 4
      end
    end

    context 'largest product is on the diagonal' do 
      let(:grid) {
        [[99, 47, 61, 33],
         [20, 99, 82, 40],
         [18, 81, 99, 13],
         [12, 90, 66, 99]]
      }

      it 'returns the correct product' do 
        expect(multiplier.get_largest_product).to eql 99 ** 4
      end
    end
  end
end