class CreateResiduals < ActiveRecord::Migration
  def change
    create_table :residuals do |t|
      t.integer :start_month
      t.integer :end_month

      t.timestamps
    end
  end
end
