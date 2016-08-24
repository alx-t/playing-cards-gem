require 'spec_helper'

describe PlayingCards::Deck do

  let(:deck) { PlayingCards::Deck.new }

  it 'have 52 cards' do
    expect(deck.cards.length).to eq 52
  end

  it 'have 51 cards after getting one' do
    deck.get_card!
    expect(deck.cards.length).to eq 51
  end
end

