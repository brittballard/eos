class Term < ActiveRecord::Base
  attr_accessible :end_month, :start_month
  has_many :modifiers

  def calculate(deal)
    Payment.new(amount: deal.mils * deal.term_kwh * ((self.end_month - self.start_month) / deal.term.to_f),
                date: deal.start_date)
  end
end
