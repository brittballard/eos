class FinalLumpSum < ActiveRecord::Base
  attr_accessible :percentage

  def calculate(deal)    
    Payment.new(amount: deal.mils * deal.term_kwh * self.percentage,
                date: deal.end_date)
  end
  
end
