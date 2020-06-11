class Deck

    attr_accessor :cards 

    def initialize()
        @cards = []
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"] 
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits.each do |suit|
            rank.size.times do |i|
                @cards << Card.new(suit, rank[i])
            end
        end
    end
    
    def choose_card
        removed = cards.sample
        cards.delete_if {|card| card == removed}
        removed     
    end

end

class Card

    attr_accessor :rank, :suit 

    def initialize(suit, rank)
        @rank = rank
        @suit = suit 
    end
end
