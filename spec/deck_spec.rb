require 'rspec'
require 'deck'

describe Deck do

  let(:deck) { Deck.new }

  describe "#collect_suit" do
    it "should return 13 hearts in a new deck" do
      expect(deck.collect_suit(:hearts).count).to eq(13)
    end

    it "should return only cards of a single suit" do
      single_suit = deck.collect_suit(:spades).all? do |card|
        card.suit == :spades
      end
      expect(single_suit).to be true
    end
  end

  describe "#collect_rank" do
    it "should return 4 kings in a new deck" do
      expect(deck.collect_rank(13).count).to eq(4)
    end

  end

  describe "#build_deck" do
    it "should create a deck with a 52 cards" do
      expect(deck.cards.count).to eq(52)
    end

    it "should create a deck with 13 spades" do
      expect(deck.collect_suit(:spades).count).to eq(13)
    end

    it "should create a deck with 13 hearts" do
      expect(deck.collect_suit(:hearts).count).to eq(13)
    end

    it "should create a deck with 13 clubs" do
      expect(deck.collect_suit(:clubs).count).to eq(13)
    end

    it "should create a deck with 13 diamonds" do
      expect(deck.collect_suit(:diamonds).count).to eq(13)
    end

    it "should create a deck with four kings" do
      expect(deck.collect_rank(13).count).to eq(4)
    end
  end

end




