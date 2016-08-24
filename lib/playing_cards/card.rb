module PlayingCards

  class Card

    attr_reader :symbol, :suit, :value

    def initialize(options)
      raise 'Invalid arguments' unless options
      if options[:symbol] && options[:suit]
        @symbol = options[:symbol].to_s
        @suit = options[:suit]
      elsif options[:str]
        @symbol, @suit = (options[:str]).split('-')
      else
        raise 'Invalid arguments'
      end
      @value = value
    end

    def to_s
      return "#@symbol-#@suit: #@value"
    end

    def value
      return 10 if ['J', 'Q', 'K'].include?(@symbol)
      return 11 if @symbol == 'A'
      return @symbol.to_i
    end
  end
end

