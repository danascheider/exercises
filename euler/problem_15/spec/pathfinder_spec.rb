require 'spec_helper'

describe Pathfinder do 
  describe 'count_paths' do 
    context '1 x 1 grid' do 
      it 'returns 2' do 
        expect(Pathfinder.count_paths(1)).to equal 2
      end
    end

    context '2 x 2 grid' do 
      it 'returns 6' do 
        expect(Pathfinder.count_paths(2)).to equal 6
      end
    end
  end
end