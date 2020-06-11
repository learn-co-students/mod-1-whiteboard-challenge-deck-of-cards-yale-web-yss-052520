class Deck
    @@SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @@RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    attr_reader :cards
    def initialize
        @cards = []
        @@SUITS.each do |suit|
            @@RANKS.each { |rank| @cards << Card.new(rank, suit) }
        end
    end
    def choose_card
        chosen_card=@cards.sample
        @cards.delete_if{|card| card==chosen_card}
        chosen_card
    end
end

class Card
    @@all = []
    attr_reader :rank, :suit
    def initialize(suit, rank)
        @rank=rank
        @suit=suit
        @@all << self
    end
    def self.all
        @@all
    end
end
