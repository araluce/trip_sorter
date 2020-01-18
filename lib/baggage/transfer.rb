module Baggage
  class Transfer < Base

    DESCRIPTION = 'Baggage will we automatically transferred from your last leg.'

    def initialize
      super(nil)
    end

    def to_s
      DESCRIPTION
    end

  end
end