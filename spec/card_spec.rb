# encoding: UTF-8

require 'rspec'
require 'card'

describe Card do

  let(:spade) { Card.new(:spades, '2') }
  let(:club) { Card.new(:clubs, 'K') }
  let(:heart) { Card.new(:hearts, '10') }
  let(:diamond) { Card.new(:diamonds, 'A') }

  describe '#render' do
    it 'correctly renders spades' do
      expect(spade.render).to include('♠')
    end

    it 'correctly renders clubs' do
      expect(club.render).to include('♣')
    end

    it 'correctly renders hearts' do
      expect(heart.render).to include('♥')
    end

    it 'correctly renders diamonds' do
      expect(diamond.render).to include('♦')
    end

    it 'correctly renders face cards' do
      expect(club.render).to include('K')
    end

    it 'correctly renders number cards' do
      expect(heart.render).to include('10')
    end
  end

end