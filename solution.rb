require 'pry'

class Deck
    attr_accessor :cards

    RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]
    
    def initialize
        @cards = []
        SUITS.each do |suit|
            RANKS.each do |rank|
                self.cards.push(Card.new(suit, rank))
                # binding.pry
            end
        end
    end

    def choose_card
        card = cards.sample
        cards.delete(card)
    end
end

class Card
    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end


