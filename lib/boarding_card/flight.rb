module BoardingCard
  class Flight < Base

    attr_reader :gate, :baggage

    def initialize(id, origin, destination, seat, gate, baggage)
      @gate     = gate
      @baggage  = baggage ? Baggage::Base.new(baggage) : ::Baggage::Transfer.new

      super(id, origin, destination, seat)
    end

    def to_s
      "From #{origin} Airport, take flight #{id} to #{destination}. Gate #{gate}, seat #{seat}. #{baggage.to_s}"
    end

  end
end