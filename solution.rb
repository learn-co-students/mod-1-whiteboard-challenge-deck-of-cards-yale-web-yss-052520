$CARDS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
$SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]

class Deck
    attr_reader :cards

    def create_deck 
        # Product is a method which returns an array of all combinations of elements
        $CARDS.product($SUITS).map {|card, suit| Card.new(suit, card)} #could also do nesting of loops (iterating with each!)
    end

    def initialize 
        @cards = create_deck 
    end 

    def choose_card 
        self.cards.delete_at(rand(0...self.cards.length))
    end 
end

class Card
    attr_reader :rank, :suit 

    def initialize(suit, rank)
        @suit = suit 
        @rank = rank 
    end 
end
