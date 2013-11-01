require_relative 'card'

class Hand

  def initialize(cards = [])
    @cards = cards
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    rank_count.values.include?(4)
  end

  def full_house?
    rank_count.values.include?(3) && rank_count.values.include?(2)
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
    end

    false
  end

  def three_of_a_kind?
    rank_count.values.include?(3)
  end

  def two_pair?
    rank_count.values.count(2) >= 2
  end

  def one_pair?
    rank_count.values.include?(2)
  end

  def high_card
    # do this later
  end

  def rank_count
    rank_count = Hash.new(0)

    @cards.each do |card|
      rank_count[card.rank] += 1
    end

    rank_count
  end
end

