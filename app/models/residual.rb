class Residual < ActiveRecord::Base
  attr_accessible :end_month, :start_month

  def calculate(deal)
    payments = []
    upper_bound_correction = 0
    
    if(deal.term > self.end_month)
      upper_bound_correction = deal.term - self.end_month
    end
    
    (deal.term.to_i - self.start_month.to_i - upper_bound_correction.to_i).times do |i|
      payments << Payment.new(amount: (deal.term_kwh * deal.mils) / deal.term,
                              date: (deal.start_date.to_datetime >> self.start_month) >> i) 
    end
    
    payments
  end
end
