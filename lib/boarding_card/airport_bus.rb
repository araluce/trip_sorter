module BoardingCard
  class AirportBus < Base

    def initialize(id, origin, destination, seat)
      super(id, origin, destination, seat)
    end

    def to_s
      "Take the airport bus from #{origin} to #{destination} Airport. #{seat_to_s}"
    end

  end
end