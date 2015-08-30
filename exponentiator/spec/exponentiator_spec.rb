require 'spec_helper'

describe Exponentiator do 
  describe 'exponentiate' do 
    it 'returns the correct value' do 
      exponentiator = Exponentiator.new 4,4
      expect(exponentiator.exponentiate(4,4)).to eql 256
    end
  end
end