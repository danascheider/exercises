require 'spec_helper'

describe Multiplier do 
  let(:multiplier) { Multiplier.new(grid, grouping) }

  describe 'get_largest_product method' do 
    context 'grouping is the same as grid size' do 
      let(:grouping) { 2 }
      let(:grid) {
        Grid.new [[3, 4],
         [12, 19]]
      }

      it 'returns the correct product' do 
        expect(multiplier.get_largest_product).to eql 12 * 19
      end
    end

    context 'grouping is not the same as grid size' do
      let(:grouping) { 4 }

      context 'largest product is on a row' do 
        let(:grid) {
          Grid.new [[8,  2,  22, 97, 38],
           [49, 49, 99, 40, 17],
           [81, 49, 31, 73, 55],
           [52, 70, 95, 23, 4],
           [22, 31, 16, 71, 51]]
        }

        it 'returns the correct product' do 
          expect(multiplier.get_largest_product).to eql 494001585
        end
      end

      context 'largest product is on a column' do 
        let(:grid) {
          Grid.new [[99, 47, 61, 33],
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
          Grid.new [[99, 47, 61, 33],
           [20, 99, 82, 40],
           [18, 81, 99, 13],
           [12, 90, 66, 99]]
        }

        it 'returns the correct product' do 
          expect(multiplier.get_largest_product).to eql 99 ** 4
        end
      end

      context 'multiple occurrences of value' do 
        let(:grid) {
          Grid.new [[97, 99, 99, 99],
           [28, 1, 28, 22],
           [9, 1, 97, 6]]
        }

        it 'doesn\'t get fucked up' do 
          expect(multiplier.get_largest_product).to eql 97 * 99 ** 3
        end
      end
    end
  end
end