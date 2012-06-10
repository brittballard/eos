class HomeController < ApplicationController
  def index
  end

  def calculate
    deal = Deal.new(mils: params["mils"],
                    start_date: params["start_date"],
                    end_date: params["end_date"],
                    term_kwh: params["term_kwh"],
                    term: params["term"])
    term = Term.new(start_month: 0,
                    end_month: 12)
    residual = Residual.new(start_month: 13,
                            end_month: 9999)
    
    @payments = []
    @payments << term.calculate(deal)
    @payments.concat(residual.calculate(deal))
    
    render :payments
  end
end
