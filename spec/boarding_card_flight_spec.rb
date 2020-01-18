require 'spec_helper'
require 'boarding_card/flight'

describe BoardingCard::Flight do

  def model
    BoardingCard::Flight
  end

  describe 'to_s' do

    it 'should show the boarding card route with baggage drop counter' do
      boarding_card =  model.new('SK455', 'Gerona', 'Stockholm', '3A', '45B', '344')

      expect(boarding_card.to_s).to eq('From Gerona Airport, take flight SK455 to Stockholm. Gate 45B, seat 3A. Baggage drop at ticket counter 344.')
    end

    it 'should show the boarding card route with automatic baggage' do
      boarding_card =  model.new('SK455', 'Gerona', 'Stockholm', '3A', '45B', nil)

      expect(boarding_card.to_s).to eq('From Gerona Airport, take flight SK455 to Stockholm. Gate 45B, seat 3A. Baggage will we automatically transferred from your last leg.')
    end

  end
end