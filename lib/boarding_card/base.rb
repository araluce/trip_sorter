module BoardingCard
  class Base

    attr_reader :id, :origin, :destination, :seat

    def initialize(id, origin, destination, seat)
      @id           = id
      @origin       = origin
      @destination  = destination
      @seat         = seat
    end

    def to_s
      "#{origin} - #{destination}"
    end

    def seat_to_s
      return 'No  seat  assignment' unless seat

      "Sit in seat #{seat}"
    end

  end
end