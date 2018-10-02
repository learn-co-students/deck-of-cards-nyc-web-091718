require 'pry'
class Deck
  attr_accessor :cards
  def initialize()
    #iterate through ranks
    #for each rank create a card of every suit
    #binding.pry
    @cards = []
     Card.ranks.each do |rank|
       Card.suits.each do |suit|
         @cards << Card.new(suit,rank)
       end
     end
     #binding.pry
  end
  def choose_card
    choosen_card = self.cards.sample
    self.cards.delete_if {|card| card == choosen_card}
    choosen_card
  end
end#end of deck class

class Card

  attr_reader :rank, :suit
  @@all = []
  def self.all
    @@all
  end

  def self.ranks
    ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  end

  def self.suits
    ["Hearts", "Clubs", "Diamonds", "Spades"]
  end

  def initialize(suit,rank)
    @rank = rank
    @suit = suit
    #@deck = deck
    @@all << self
  end
end

#d = Deck.new
#c = Card.new("A","heart")
#binding.pry
#puts "woohoo"
