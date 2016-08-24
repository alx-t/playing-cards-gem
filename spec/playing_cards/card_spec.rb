require 'spec_helper'

describe PlayingCards::Card do

  it 'accepts symbol, suit and value when created' do
    card = PlayingCards::Card.new(symbol: 3, suit: 'C')
    expect(card.symbol).to eq '3'
    expect(card.suit).to eq 'C'
    expect(card.value).to eq 3
  end

  it 'accepts symbol, suit and value when created with string' do
    card = PlayingCards::Card.new(str: '10-H')
    expect(card.symbol).to eq '10'
    expect(card.suit).to eq 'H'
    expect(card.value).to eq 10
  end

  it 'have a value 10 for facecards' do
    facecards = %w(J Q K)
    facecards.each do |facecard|
      card = PlayingCards::Card.new(symbol: facecard, suit: 'S')
      expect(card.value).to eq 10
    end
  end

  it 'have a value 11 for ace' do
    card = PlayingCards::Card.new(symbol: 'A', suit: 'D')
    expect(card.value).to eq 11
  end
end

