SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]
RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

class Deck
    attr_accessor :cards
    

    def initialize()
        @cards = []
        for suit in SUITS
            for rank in RANKS
                @cards << Card.new(suit, rank)
            end
        end
    end    
    
    def choose_card
        @cards.delete(@cards.sample)
    end

end

class Card
    attr_accessor :rank, :suit
    def initialize(suit, rank)
        @rank = rank 
        @suit = suit 
    end
end