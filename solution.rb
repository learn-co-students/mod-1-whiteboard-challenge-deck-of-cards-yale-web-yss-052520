class Deck
    attr_reader :cards

    def initialize
        @cards = []
        suits = %w(Spades Diamonds Clubs Hearts)
        ranks = %w(1 2 3 4 5 6 7 8 9 10 J Q K)

        suits.each do |suit|
            ranks.each do |rank|
                card = Card.new(suit, rank)
                @cards << card
            end
        end
    end

    def choose_card
        card = cards.sample
        cards.delete(card)
        card
    end
end

class Card
    attr_reader :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end