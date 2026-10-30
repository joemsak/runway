class Runway
  class Card
    attr_accessor :name, :balance

    def initialize
      @name = "Unnamed Card"
    end
  end

  def initialize(cash:)
    @cash = cash
    @cards = []
  end

  def add_card
    card = Card.new
    yield(card)
    @cards << card
  end

  def result
    @cash - @cards.sum(&:balance)
  end
end
