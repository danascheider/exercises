RSpec.describe ProfitCalculator do 
  context "short, strictly increasing array" do 
    let(:stock_prices) { [ 1, 2 ] }
    let(:profit)       { 1 }

    it "returns the highest profit" do 
      expect(described_class.get_max_profit(stock_prices)).to eq profit
    end
  end

  context "larger, strictly increasing array" do 
    let(:stock_prices) { [ 1, 2, 3, 4, 5 ] }
    let(:profit)       { 4 }

    it "returns the highest profit" do 
      expect(described_class.get_max_profit(stock_prices)).to eq profit
    end
  end

  context "small, strictly decreasing array" do 
    let(:stock_prices) { [ 2, 1 ] }
    let(:profit)       { -1 }

    it "returns the highest profit" do 
      expect(described_class.get_max_profit(stock_prices)).to eq profit
    end
  end

  context "larger, strictly decreasing array" do 
    let(:stock_prices) { [ 10, 8, 3, 2, 1 ] }
    let(:profit)       { -1 }

    it "returns the highest profit" do
      expect(described_class.get_max_profit(stock_prices)).to eq profit
    end
  end

  context "non-monotonic array" do 
    let(:stock_prices) { [ 6, 8, 1, 6, 2 ] }
    let(:profit)       { 5 }

    it "returns the highest profit" do 
      expect(described_class.get_max_profit(stock_prices)).to eq profit
    end
  end
end