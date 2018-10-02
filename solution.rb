require 'pry'
class Deck

  attr_reader :cards

    def initialize
      suits = ['Diamonds','Spades','Clubs','Hearts']
      ranks = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']
      @cards = []
      ranks.each do |rank|
        suits.each do |suit|
          @cards << Card.new(suit, rank)
        end
      end
    end

    def shuffle
      cards.shuffle!
    end

    def fancy
      puts '*' * 10
    end

    def choose_card
      #binding.pry
      shuffle
      fancy
      puts "Shuffling the deck"
      fancy
      puts "Drawing card...."
      fancy
      puts "Your card is #{cards.first.rank} of #{cards.first.suit}"
      fancy
      cards.shift
    end

end

class Card
    attr_reader :rank, :suit

    def initialize(suit, rank)
      @suit = suit
      @rank = rank
    end
end
#binding.pry
