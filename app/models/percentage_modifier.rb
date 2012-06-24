class PercentageModifier < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_one :modifier, :as => :contract_modifier
  
  def modify(payments)
    payments.each do |payment|
      payment.amount = payment.amount * self.percentage_to_pay
    end
  end
end
