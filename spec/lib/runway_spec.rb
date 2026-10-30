require "spec_helper"

RSpec.describe Runway do
  describe ".result" do
    specify do
      runway = described_class.new(cash: 1_000)
      runway.add_card do |card|
        card.balance = 500
      end

      expect(runway.result).to eq(500)
    end

    specify do
      runway = described_class.new(cash: 1_000)
      runway.add_card do |card|
        card.balance = 1_500
      end

      expect(runway.result).to eq(-500)
    end
  end
end
