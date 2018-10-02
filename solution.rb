require 'pry'

class Deck
  attr_reader :the_deck, :cards

  def initialize
    @the_deck = []
    @cards = @the_deck
    make_deck
  end

  def make_deck
    4.times do |s|
      13.times do |r|
        @the_deck << Card.new(s,r)
        #puts "#{r} | #{s}"
      end
    end
  end

  def choose_random_card
    cc = the_deck.delete_at(rand(the_deck.length))
    cc.drawn = true
    cc
  end

  def shuffle_deck
    the_deck.shuffle!
  end

  def choose_top_card
    cc = the_deck.shift
    cc.drawn = true
    cc
  end

  def choose_card
    choose_random_card
  end

end

class Card
  attr_reader :rank, :suit
  attr_accessor :drawn

  # ranks = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']
  # suits = ['Hearts','Clubs','Diamonds','Spades']

  def initialize(suitID, rankID)
    #binding.pry
    if rankID.class != Fixnum && suitID != Fixnum
      #binding.pry
      @rank = rankID
      @suit = suitID
    else
      @rank = ranks(rankID)
      @suit = suits(suitID)
      @drawn = false
    end
  end

  def ranks(n)
    r = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']
    r[n]
  end

  def suits(n)
    s = ['Hearts','Clubs','Diamonds','Spades']
    s[n]
  end
end

####################
# Test Code

# d = Deck.new
# d.make_deck
#
# binding.pry
#
# puts 0
