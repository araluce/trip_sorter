require 'spec_helper'
require 'baggage/base'

describe Baggage::Base do

  def model
    Baggage::Base
  end

  describe 'to_s' do

    it 'should show the baggage drop counter' do
      baggage =  model.new('344')

      expect(baggage.to_s).to eq('Baggage drop at ticket counter 344')
    end

    it 'should show nothing' do
      baggage =  model.new(nil)

      expect(baggage.to_s).to eq('')
    end

  end
end