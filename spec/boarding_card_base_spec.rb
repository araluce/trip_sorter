require 'spec_helper'
require 'boarding_card/base'

describe BoardingCard::Base do

  describe 'to_s' do

    it 'should show the boarding card route' do
      boarding_card = BoardingCard::Base.new('78A', 'Madrid', 'Barcelona', '45B')

      expect(boarding_card.to_s).to eq('Madrid - Barcelona')
    end

    it 'should show the seat number text' do
      boarding_card = BoardingCard::Base.new('78A', 'Madrid', 'Barcelona', '45B')

      expect(boarding_card.seat_to_s).to eq('Sit in seat 45B')
    end

    it 'should show a free seat number' do
      boarding_card = BoardingCard::Base.new('78A', 'Madrid', 'Barcelona', nil)

      expect(boarding_card.seat_to_s).to eq('No seat assignment')
    end
  end

end