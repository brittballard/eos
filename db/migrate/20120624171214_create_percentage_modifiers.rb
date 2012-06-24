class CreatePercentageModifiers < ActiveRecord::Migration
  def change
    create_table :percentage_modifiers do |t|
      t.decimal :percentage_to_pay, :scale => 5
      t.timestamps
    end
  end
end
