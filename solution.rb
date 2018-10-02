class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits.each do |suit|
      ranks.each do |rank|
        card = Card.new(rank, suit)
        @cards << card
      end
    end
  end

  def choose_card
    @cards.delete(@cards.sample)
  end

end

class Card
  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end

end
