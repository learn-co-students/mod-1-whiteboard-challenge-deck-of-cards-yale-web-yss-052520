require 'pry'

$ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
$suits = ["Hearts", "Spades", "Clubs", "Diamonds"]

class Deck

  attr_accessor :cards


  def initialize
    @cards = []

    $ranks.each{|r|
      
      $suits.each{|s|
      card = Card.new(r, s)
      @cards << card
      }

    }

  end

  def choose_card
    @cards.delete(@cards.sample)
  end



end



class Card

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

end

binding.pry
0