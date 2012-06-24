require 'spec_helper'

describe DateModifier do
  it 'should add the number_of_days_adjustment value to the date field in the payments in receives' do
    modifier = FactoryGirl.build(:date_modifier, number_of_days_adjustment: 30)
    payment = FactoryGirl.build(:payment, date: "1980-03-11")
    payments = [payment]
    
    modifier.modify(payments)
    payments[0].date.should == DateTime.new(1980, 4, 10)
  end
end
