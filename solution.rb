require 'pry'

class Deck

    attr_accessor :cards
    $SUITS = ["Diamonds" , "Clubs" , "Hearts", "Spades"]
    $RANKS = ["2","3","4","5",'6','7','8','9','10','J','Q','K','A']

    def initialize
        #$SUITS.map {|suit| $RANKS.map |rank| {@cards << Card.new(suit,rank)}}
        @cards = []
        $SUITS.each do |suit|
            $RANKS.each do |rank|
                @cards << Card.new(suit,rank)
            end
        end
    end

    def choose_card
        cards.delete(cards.sample)
    end

end

class Card

    attr_accessor :suit , :rank
    
    def initialize(suit , rank)
        @suit = suit
        @rank = rank
    end
    
end

# binding.pry
# 0
