module Baggage
  class Transfer < Base

    def initialize
      super(nil)
    end

    def to_s
      'Baggage will we automatically transferred from your last leg.'
    end

  end
end