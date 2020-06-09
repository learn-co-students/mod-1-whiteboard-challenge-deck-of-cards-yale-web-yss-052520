

class Deck
    @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    attr_reader :cards

    def initialize
        @cards = []
        @@suits.each do |suit|
            @@ranks.each do |rank|
                @cards << Card.new(rank, suit)
            end
        end
    end
        
    def choose_card
        cards.delete_at(rand(cards.length))
    end

end

class Card
    attr_accessor :rank, :suit
    @@all = []
    def initialize(suit, rank)
        @rank = rank
        @suit = suit
        @@all << self
    end
end
