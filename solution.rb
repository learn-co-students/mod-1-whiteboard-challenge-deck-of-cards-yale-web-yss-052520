class Card

    attr_accessor :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end

class Deck

    attr_accessor :cards

    def initialize
        @cards = []
        for suit in ["Hearts", "Clubs", "Diamonds", "Spades"]
            for rank in ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        self.cards.pop
    end
end