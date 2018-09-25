require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  describe "Positive integer as the argument" do
    it "Should return proper-value" do
      [
        [0, 0],
        [1, 1],
        [3, 4],
        [11, 16]
      ].each {|v|
        expect(BonusDrink.total_count_for(v[0])).to eq v[1]
      }
    end
  end
  describe "Error cases" do
    it "Should raise an error in the case of non-integer type" do
      expect { BonusDrink.total_count_for(Math::E) }.to raise_error(
        ArgumentError, "The argument 'amount' should be an integer."
      )
      expect { BonusDrink.total_count_for("Doom!!") }.to raise_error(
        ArgumentError, "The argument 'amount' should be an integer."
      )
    end
    it "Should raise an error in the case of negative number" do
      expect { BonusDrink.total_count_for(-1) }.to raise_error(
        ArgumentError, "The argument 'amount' should be positive."
      )
    end
  end
end
