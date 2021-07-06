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

=begin

Other method
class Deck

  attr_reader :cards

  def initialize
    @card = []
    for suit in ["Hearts", "Clubs", "Diamonds", "Spades"]
      for rank in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @card << Card.new(suit, rank)
      end
    end
  end

  def choose_card
      @cards.delete(@cards.sample)
  end
  
end

=end
