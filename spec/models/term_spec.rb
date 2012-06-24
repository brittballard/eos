require 'spec_helper'

describe Term do
  describe 'calculate' do
    before do
      @deal = FactoryGirl.build(:deal, term: 36, term_kwh: 300000, mils: 0.003, start_date: "1980-03-11")
      @term = FactoryGirl.build(:term, start_month: 0, end_month: 12)
    end
    
    it 'should return a single payment' do
      @term.calculate(@deal).should be_an_instance_of(Payment)
    end
      
    it 'should * deal.mils by deal.term_kwh and return a payment for that amount * by (term.end_month - term.start_month) / deal.term' do
      @term.calculate(@deal).amount.should be_within(0.1).of(300)
    end
    
    it 'should set the date to the start date of the deal' do
      @term.calculate(@deal).date.should == DateTime.new(1980, 3, 11)
    end
  end
end
