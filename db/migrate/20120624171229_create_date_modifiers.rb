class CreateDateModifiers < ActiveRecord::Migration
  def change
    create_table :date_modifiers do |t|
      t.integer :number_of_days_adjustment
      t.timestamps
    end
  end
end
