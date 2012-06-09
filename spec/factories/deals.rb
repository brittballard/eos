# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :deal do
    start_date "2012-06-04 22:33:02"
    end_date "2012-06-04 22:33:02"
    mils 0.003
    term 24
    annual_kwh "9.99"
    term_kwh "9.99"
  end
end
