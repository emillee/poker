require_relative 'card'

class Deck

  def initialize
    build_deck
  end

  def build_deck
    @cards = Array.new(13) { Card.new(:hearts, "10") }
    @cards << Card.new(:spades, "7")
  end

  def shuffle
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
