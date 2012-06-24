require 'spec_helper'

describe FinalLumpSum do
  describe 'calculate' do
	before do
	  @deal = FactoryGirl.build(:deal, term: 36, term_kwh: 300000, mils: 0.003, start_date: "1980-03-11")
	  @final_lump_sum = FactoryGirl.build(:final_lump_sum, percentage: 0.1)
	end
	
	it 'should return an array of payments' do
	  result = @final_lump_sum.calculate(@deal)
	  result.should be_an_instance_of(Payment)
	end
	
	it 'should calculate payment in the amount of mils * term_kwh * percentage' do
	  @final_lump_sum.calculate(@deal).amount.should == 90
	end
  end
end
