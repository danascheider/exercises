RSpec.describe Multiplier do 
  describe "get_products_of_all_ints_except_at_index()" do 
    context "short array" do 
      let(:array) { [ 1, 2, 3 ] }
      let(:answer) { [ 6, 3, 2] }

      it "excludes the given value" do 
        expect(described_class.get_products_of_all_ints_except_at_index(array)).to eq answer
      end
    end

    context "array contains zeroes" do 
      let(:array)  { [ 1, 2, 0, 3 ] }
      let(:answer) { [ 0, 0, 6, 0 ] }

      it "returns the correct values" do 
        expect(described_class.get_products_of_all_ints_except_at_index(array)).to eq answer
      end
    end
  end
end