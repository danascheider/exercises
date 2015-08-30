require 'spec_helper'

describe '#accumulate' do 
  context 'empty accumulation' do 
    it 'returns the empty array' do 
      val = [].accumulate {|e| e * e }
      expect(val).to eq []
    end
  end

  context 'accumulate squares' do 
    it 'returns the squares' do 
      result = [1, 2, 3].accumulate {|number| number * number }
      expect(result).to eq [1, 4, 9]
    end
  end

  context 'accumulate upcases' do 
    it 'upcases' do 
      result = %w(hello world).accumulate(&:upcase)
      expect(result).to eq %w(HELLO WORLD)
    end
  end

  context 'reversed strings' do 
    it 'reverses the strings' do 
      result = %w(the quick brown fox etc).accumulate(&:reverse)
      expect(result).to eq %w(eht kciuq nworb xof cte)
    end
  end

  context 'accumulate recursively' do 
    it 'accumulates recursively' do 
      result = %w(a b c).accumulate do |char|
        %w(1 2 3).accumulate do |digit|
          "#{char}#{digit}"
        end
      end

      expect(result).to eql [%w(a1 a2 a3), %w(b1 b2 b3), %w(c1 c2 c3)]
    end
  end

  it 'does not change in place'  do 
    original = [1, 2, 3]
    original.accumulate(&:to_s)
    expect(original).to eql [1, 2, 3]
  end
end