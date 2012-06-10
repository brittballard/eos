class AddScaleToTheAmountOfAPayment < ActiveRecord::Migration
  def change
      change_column(:payments, :amount, :decimal, :precision => 10, :scale => 5)
  end
end
