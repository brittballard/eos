class DateModifier < ActiveRecord::Base
  # attr_accessible :title, :body

  has_one :modifier, :as => :contract_modifier

  def modify(payments)
    payments.each do |payment|
      payment.date = payment.date + self.number_of_days_adjustment.days
    end
  end
end
