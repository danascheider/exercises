RSpec.describe ProfitCalculator do 
  context "short, strictly increasing array" do 
    let(:stock_prices) { [ 1, 2 ] }
    let(:profit)       { 1 }

    it "returns the highest profit" do 
      expect(described_class.get_max_profit(stock_prices)).to eq profit
    end
  end
end