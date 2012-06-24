require 'spec_helper'

describe PercentageModifier do
  it 'should reduce all payment amounts by the percentage provideded' do
    modifier = FactoryGirl.build(:percentage_modifier, percentage_to_pay: 0.90)
    payment = FactoryGirl.build(:payment, amount: 9.90)
    payments = [payment]
    
    modifier.modify(payments)
    payments[0].amount.to_f.should == 8.91
  end
end
