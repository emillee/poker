require 'rspec'
require 'hand'

describe Hand do

  let(:hand) { Hand.new }

  describe "#best_hand" do

    it "detects a straight flush" do
        hand.cards = [
            Card.new(:hearts, 2),
            Card.new(:hearts, 3),
            Card.new(:hearts, 4),
            Card.new(:hearts, 5),
            Card.new(:hearts, 6),
        ]
        expect(hand.best_hand).to eq(:straight_flush)
    end

    it "detects a four of a kind" do
        hand.cards = [
            Card.new(:hearts, 2),
            Card.new(:hearts, 2),
            Card.new(:hearts, 2),
            Card.new(:hearts, 2),
            Card.new(:hearts, 6),
        ]
        expect(hand.best_hand).to eq(:four_of_a_kind)
    end

    it "detects a full house" do
        hand.cards = [
            Card.new(:hearts, 2),
            Card.new(:hearts, 2),
            Card.new(:hearts, 2),
            Card.new(:hearts, 11),
            Card.new(:hearts, 11),
        ]
        expect(hand.best_hand).to eq(:full_house)
    end

    it "detects a flush" do
        hand.cards = [
            Card.new(:hearts, 2),
            Card.new(:hearts, 3),
            Card.new(:hearts, 12),
            Card.new(:hearts, 2),
            Card.new(:hearts, 6),
        ]
        expect(hand.best_hand).to eq(:flush)
    end

    it "detects a straight" do
        hand.cards = [
            Card.new(:hearts, 9),
            Card.new(:spades, 10),
            Card.new(:hearts, 11),
            Card.new(:hearts, 12),
            Card.new(:hearts, 13),
        ]
        expect(hand.best_hand).to eq(:straight)
    end

    it "detects a three of a kind" do
        hand.cards = [
            Card.new(:hearts, 9),
            Card.new(:spades, 9),
            Card.new(:hearts, 9),
            Card.new(:hearts, 12),
            Card.new(:hearts, 13),
        ]
        expect(hand.best_hand).to eq(:three_of_a_kind)
    end

    it "detects a two pair" do
        hand.cards = [
            Card.new(:hearts, 9),
            Card.new(:spades, 9),
            Card.new(:hearts, 3),
            Card.new(:hearts, 3),
            Card.new(:hearts, 13),
        ]
        expect(hand.best_hand).to eq(:two_pair)
    end

    it "detects a one pair" do
        hand.cards = [
            Card.new(:hearts, 9),
            Card.new(:spades, 9),
            Card.new(:hearts, 11),
            Card.new(:hearts, 12),
            Card.new(:hearts, 13),
        ]
        expect(hand.best_hand).to eq(:one_pair)
    end

    it "detects a high card" do
        hand.cards = [
            Card.new(:hearts, 9),
            Card.new(:spades, 2),
            Card.new(:hearts, 11),
            Card.new(:hearts, 12),
            Card.new(:hearts, 13),
        ]
        expect(hand.best_hand).to eq(:high_card)
    end

  end
end
