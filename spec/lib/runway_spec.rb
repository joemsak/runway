require "spec_helper"

RSpec.describe Runway do
  describe ".result" do
    specify do
      described_class.configure do |config|
        config.cash = 1_000
        config.debt = 500
      end

      expect(described_class.result).to eq(500)
    end

    specify do
      described_class.configure do |config|
        config.cash = 1_000
        config.debt = 1_500
      end

      expect(described_class.result).to eq(-500)
    end
  end
end
