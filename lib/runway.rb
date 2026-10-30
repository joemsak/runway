module Runway
  class Configuration
    attr_accessor :cash, :debt
  end

  def self.configure
    @config ||= Configuration.new
    yield(@config)
  end

  def self.result
    @config.cash - @config.debt
  end
end
