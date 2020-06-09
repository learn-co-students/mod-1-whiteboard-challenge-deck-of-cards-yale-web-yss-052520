class Deck

  attr_reader :cards

  def initialize
    @cards = self.make_deck
  end

  def make_deck
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits.map { |suit|
      ranks.map { |rank| Card.new(suit, rank) }
    }.flatten
  end

  def choose_card
    @cards.delete_at(rand(52))
  end
end

class Card

  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

end
