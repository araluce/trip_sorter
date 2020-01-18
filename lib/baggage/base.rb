module Baggage
  class Base

    attr_reader :counter

    def initialize(counter)
      @counter = counter
    end

    def to_s
      return '' unless counter

      "Baggage drop at ticket counter #{counter}."
    end

  end
end