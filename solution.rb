$RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
$SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]

class Deck
    attr_accessor :cards

    def initialize
        @cards = []
        $RANKS.each do |rank|
            $SUITS.each do |suit|
                card = Card.new(suit, rank)
                @cards << card
            end
        end
    end

    def choose_card
        @cards.delete(@cards.sample)
    end

end

class Card
    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end

end
