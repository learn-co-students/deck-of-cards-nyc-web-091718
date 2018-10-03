// require 'pry'

class Deck
 attr_accessor :cards

 def initialize()
   @cards = []
   seed_deck
 end

 def seed_deck
   self.cards = []
   Card::Suits.each {|suit| Card::Rank.each{|rank| self.cards << Card.new(suit, rank)}
 # binding.pry
}
 end

 def choose_card
   chosen = self.cards.sample
   self.cards.delete_if{|card| card == chosen}
   chosen
 end

end

class Card

 attr_reader :suit, :rank

 def initialize(suit, rank)
   @suit = suit
   @rank = rank
 end

 Suits = ["hearts", "clubs", "diamonds", "spades"]
 Rank = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
end
