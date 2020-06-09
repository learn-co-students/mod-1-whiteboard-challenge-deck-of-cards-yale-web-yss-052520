require 'pry'
class Deck
    attr_accessor :cards

    
    
    RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]
    def initialize
        @cards = []
        # binding.pry
        # RANKS.length.times{ |rank_idx|
        # SUITS.length.times{ |suit_idx|
        #         # Card.new(SUITS[suit_idx], RANKS[rank_idx])
        #         pp 1
        #     }
        # }
        RANKS.each{ |rank|
        SUITS.each{ |suit|
                @cards.push(Card.new(suit, rank))
                # pp rank
            }
        }
        # binding.pry
    end

    def choose_card
        @cards.delete(@cards.sample)
    end
end

class Card

    attr_accessor :rank, :suit

    @@all = []
    def initialize(suit, rank)
        @suit = suit
        @rank = rank

        @@all << self
    end

    def self.all
        @@all
    end

end


