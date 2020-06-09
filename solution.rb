require 'pry'

class Deck
    def initialize 
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits.each do |suit|  
            ranks.each do |rank| 
                card = Card.new(suit, rank, self)  
            end 
        end 
    end 
    def cards
        Card.all.select{|card| card.deck == self}
    end 
    def choose_card
        chosen_card = self.cards.sample 
        chosen_card.deck = nil  
        return chosen_card
    end 
end


class Card
    attr_accessor :rank, :suit, :deck 
    @@all = [] 
    def initialize(suit, rank, deck = nil)
        @rank = rank 
        @suit = suit 
        @deck = deck 
        @@all << self 
    end 
    def self.all 
        @@all 
    end 
end

# binding.pry 
# 0 