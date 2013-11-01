require_relative 'card'

class Hand

  def initialize(cards = [])
    @cards = cards
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
  end

  def full_house?
  end

  def flush?
    DECK::SUITS.each do |suit|
      suit_count = 0
      @cards.each do |card|
        suit_count += 1 if card.suit == suit
      end

      return true if suit_count > 4
    end

    false
  end

  def straight?
    ranks = @cards.map { |card| card.rank }.sort

    consecutive = 0
    ranks.each_with_index do |rank, index|
      next if index == ranks.count
      if rank == ranks[index + 1] - 1
        consecutive += 1
        return true if consecutive > 4
      else
        consecutive = 0
      end

      false
    end


  end

  def three_of_a_kind?
  end

  def two_pair?
  end

  def one_pair?
  end

  def high_card
  end
end