require "spec_helper"

RSpec.describe Runway::DebtSubtraction do
  describe ".result" do
    specify do
      expect(described_class.result(cash: 1_000, debt: 500)).to eq(500)
    end

    specify do
      expect(described_class.result(cash: 1_000, debt: 1_500)).to eq(-500)
    end
  end
end
