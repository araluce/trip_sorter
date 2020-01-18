module BoardingCard
  class Train < BoardingCard::Base

    def initialize(id, origin, destination, seat)
      super(id, origin, destination, seat)
    end

    def to_s
      "Take train #{id} from #{origin} to #{destination}. #{seat_to_s}"
    end

  end
end