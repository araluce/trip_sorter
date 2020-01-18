require 'spec_helper'
require 'boarding_card/airport_bus'

describe BoardingCard::AirportBus do

  def model
    BoardingCard::AirportBus
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