class Deck
    attr_reader :cards

    def initialize
        @cards = []
        for suit in ["Hearts", "Clubs", "Diamonds", "Spades"]
            for rank in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
                 @cards << Card.new(suit,rank)
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
