# encoding: UTF-8

class Card

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def render
    suit_conversion = { hearts: '♥', diamonds: '♦', spades: '♠', clubs: '♣' }

    "#{@rank}#{suit_conversion[@suit]}"
  end

end