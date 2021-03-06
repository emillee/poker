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

  describe '#shuffle' do
    it "should change the order of a card in the deck" do
      spot_check = deck.cards[2]
      deck.shuffle
      expect(spot_check).to_not eq(deck.cards[2])
    end
  end

  describe '#deal_card' do
    it "should return a single card" do
      expect(deck.deal_card).to be_an_instance_of(Card)
    end

    it "should return the card off the top of the deck" do
      spot_check = deck.cards[-1]
      expect(deck.deal_card).to eq(spot_check)
    end

  end

end