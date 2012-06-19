class FinalLumpSum < ActiveRecord::Base
  attr_accessible :percentage

  def calculate(deal)
    payments = []
    
    payments << Payment.new(amount: deal.mils * deal.term_kwh * self.percentage,
                date: deal.end_date)

    payments 
  end
  
end
