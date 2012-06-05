class Deal < ActiveRecord::Base
  attr_accessible :annual_kwh, :end_date, :mils, :start_date, :term, :term_kwh
end
