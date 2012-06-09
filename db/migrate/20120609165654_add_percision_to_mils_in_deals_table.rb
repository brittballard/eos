class AddPercisionToMilsInDealsTable < ActiveRecord::Migration
  def change
    change_column(:deals, :mils, :decimal, :precision => 5)
  end
end
