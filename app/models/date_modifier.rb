class DateModifier < ActiveRecord::Base
  # attr_accessible :title, :body

  has_one :modifier, :as => :contract_modifier
end
