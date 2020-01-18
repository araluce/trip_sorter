require 'spec_helper'
require 'trip_sorter'

describe TripSorter do

  describe 'itinerary' do

    it 'providing an ordered itinerary, I should receive the same itinerary' do
      boarding_cards = [
          BoardingCard::Train.new('78A', 'Madrid', 'Barcelona', '45B'),
          BoardingCard::BusAirport.new(nil, 'Barcelona', 'Gerona', nil),
          BoardingCard::Flight.new('SK455', 'Gerona', 'Stockholm', '3A', '45B', '344'),
          BoardingCard::Flight.new('SK22', 'Stockholm', 'New York JFK', '7B', '22', nil),
      ]

      service = TripSorter.new boarding_cards

      expect(service.sort_itinerary).to eq([boarding_cards[0], boarding_cards[1], boarding_cards[2], boarding_cards[3]])
    end

    it 'should receive an ordered itinerary' do
      boarding_cards = [
          BoardingCard::Flight.new('SK22', 'Stockholm', 'New York JFK', '7B', '22', nil),
          BoardingCard::Flight.new('SK455', 'Gerona', 'Stockholm', '3A', '45B', '344'),
          BoardingCard::BusAirport.new(nil, 'Barcelona', 'Gerona', nil),
          BoardingCard::Train.new('78A', 'Madrid', 'Barcelona', '45B'),
      ]

      service = TripSorter.new boarding_cards

      expect(service.sort_itinerary).to eq([boarding_cards[3], boarding_cards[2], boarding_cards[1], boarding_cards[0]])
    end

    it 'one card should return one result' do
      boarding_cards = [
          BoardingCard::Flight.new('SK22', 'Stockholm', 'New York JFK', '7B', '22', nil)
      ]

      service = TripSorter.new boarding_cards

      expect(service.sort_itinerary).to eq([boarding_cards[0]])
    end

    it 'error no route connection' do
      boarding_cards = [
          BoardingCard::Flight.new('SK22', 'Stockholm', 'New York JFK', '7B', '22', nil),
          BoardingCard::BusAirport.new(nil, 'Barcelona', 'Gerona', nil),
          BoardingCard::Train.new('78A', 'Madrid', 'Barcelona', '45B'),
      ]


      expect { TripSorter.new boarding_cards }.to raise_error(TripSorter::NoRouteException, "It's not a continuous route")
    end

  end

  describe 'to_s' do

  end
end