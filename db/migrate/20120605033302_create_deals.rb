class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :mils
      t.decimal :term
      t.decimal :annual_kwh
      t.decimal :term_kwh

      t.timestamps
    end
  end
end
