module PlayingCards

  class Deck

    attr_reader :cards

    def initialize
      @cards = build_cards
    end

    def get_card!
      cards.pop
    end

    private

    def build_cards
      cards = []
      %w(C D S H).each do |suit|
        (2..10).each do |number|
          cards << Card.new(symbol: number, suit: suit)
        end
        %w(J Q K A).each do |facecard|
          cards << Card.new(symbol: facecard, suit: suit)
        end
      end
      cards.shuffle
    end
  end
end

