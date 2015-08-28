require 'spec_helper'

describe Calculator do 
  let(:calculator) { Calculator.new }

  describe 'evaluate' do 
    describe 'simple operations' do 
      context 'simple addition' do 
        it 'adds' do 
          expect(calculator.evaluate('7 + 4')).to eq '11.0'
        end
      end

      context 'simple subtraction' do 
        it 'subtracts' do 
          expect(calculator.evaluate('7 - 4')).to eq '3.0'
        end
      end

      context 'simple multiplication' do 
        it 'multiplies' do 
          expect(calculator.evaluate('2 * 1')).to eq '2.0'
        end
      end

      context 'simple division' do 
        it 'divides' do 
          expect(calculator.evaluate('7 / 2')).to eq '3.5'
        end
      end
    end

    describe 'compound operations' do 
      describe 'addition, then subtraction' do 
        it 'adds, then subtracts' do 
          expect(calculator.evaluate('3 + 4 - 1')).to eq '6.0'
        end
      end

      describe 'multiplication, then division' do 
        it 'multiplies, then divides' do 
          expect(calculator.evaluate('6 * 6 / 3 * 4')).to eq '48.0'
        end
      end
    end

    describe 'order of operations' do 
      it 'multiplies first' do 
        expect(calculator.evaluate('18 - 6 * 2')).to eq '6.0'
      end

      it 'divides first' do 
        expect(calculator.evaluate('18 - 6 / 2')).to eq '15.0'
      end
    end
  end
end