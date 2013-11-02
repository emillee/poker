require_relative 'card'

class Deck

  attr_reader :cards

  SUITS = [:hearts, :clubs, :spades, :diamonds]

  def initialize
    build_deck
  end

  def build_deck
    @cards = []
    SUITS.each do |suit|
      @cards << build_suit(suit)
    end

    @cards.flatten!
  end

  def build_suit(suit)
    suited_cards = []
    2.upto(14) do |i|
      suited_cards << Card.new(suit, i)
    end

    suited_cards
  end

  def shuffle
    @cards.shuffle!
  end

  def deal_card
  end

  def collect_suit(suit)
    @cards.select { |card| card.suit == suit }
  end

  def collect_rank(rank)
    @cards.select { |card| card.rank == rank }
  end

end
