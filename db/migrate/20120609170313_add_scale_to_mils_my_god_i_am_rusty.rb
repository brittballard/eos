class AddScaleToMilsMyGodIAmRusty < ActiveRecord::Migration
  def change
      change_column(:deals, :mils, :decimal, :precision => 10, :scale => 5)
  end
end
