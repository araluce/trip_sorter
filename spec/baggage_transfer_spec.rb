require 'spec_helper'
require 'baggage/transfer'

describe Baggage::Transfer do

  def model
    Baggage::Transfer
  end

  describe 'to_s' do

    it 'should show nothing' do
      baggage =  model.new

      expect(baggage.to_s).to eq('Baggage will we automatically transferred from your last leg.')
    end

  end
end