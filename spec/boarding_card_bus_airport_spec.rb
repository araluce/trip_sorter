require 'spec_helper'
require 'boarding_card/bus_airport'

describe BoardingCard::BusAirport do

  def model
    BoardingCard::BusAirport
  end

  describe 'to_s' do

    it 'should show the boarding card route' do
      boarding_card =  model.new('78A', 'Madrid', 'Barcelona', '45B')

      expect(boarding_card.to_s).to eq('Take the airport bus from Madrid to Barcelona Airport. Sit in seat 45B')
    end

    it 'should show the boarding card route without seat' do
      boarding_card =  model.new('78A', 'Madrid', 'Barcelona', nil)

      expect(boarding_card.to_s).to eq('Take the airport bus from Madrid to Barcelona Airport. No seat assignment')
    end

  end
end