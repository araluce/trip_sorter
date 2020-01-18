require 'spec_helper'
require 'boarding_card/train'

describe BoardingCard::Train do

  def model
    BoardingCard::Train
  end

  describe 'to_s' do

    it 'should show the boarding card route' do
      boarding_card =  model.new('78A', 'Madrid', 'Barcelona', '45B')

      expect(boarding_card.to_s).to eq('Take train 78A from Madrid to Barcelona. Sit in seat 45B')
    end

    it 'should show the boarding card route seat' do
      boarding_card =  model.new('78A', 'Madrid', 'Barcelona', nil)

      expect(boarding_card.to_s).to eq('Take train 78A from Madrid to Barcelona. No seat assignment')
    end

  end
end