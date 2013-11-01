# encoding: UTF-8

class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def render
    suit_conversion = { hearts: '♥', diamonds: '♦', spades: '♠', clubs: '♣' }
    rank_conversion = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
                         6 => '6', 7 => '7', 8 => '8', 9 => '9', 10 => '10',
                         11 => 'J', 12 => 'Q', 13 => 'K', 14 => 'A' }

    "#{rank_conversion[@rank]}#{suit_conversion[@suit]}"
  end

end