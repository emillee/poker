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

  describe "#build_deck" do
    it "should create a deck with a 52 cards"

    it "should create a deck with 13 spades"

    it "should create a deck with 13 clubs"

    it "should create a deck with 13 hearts"

    it "should create a deck with 13 diamonds"

    it "should have four kings"
end