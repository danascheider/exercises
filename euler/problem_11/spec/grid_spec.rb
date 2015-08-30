require 'spec_helper'

describe Grid do 
  describe 'rotate' do 
    context 'little' do 
      let(:grid) {
        Grid.new [[1, 2],
                  [3, 4]]
      }

      it 'rotates clockwise diagonally' do 
        expect(grid.rotate).to eql [[3], [1, 4], [2]]
      end
    end

    context 'bigger' do 
      let(:grid) {
        Grid.new [[1, 2, 3],
                  [4, 5, 6],
                  [7, 8, 9]]
      }

      it 'rotates clockwise' do 
        expect(grid.rotate).to eql [[7], [4, 8], [1, 5, 9], [2, 6], [3]]
      end
    end
  end
end