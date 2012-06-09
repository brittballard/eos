class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.integer :start_month
      t.integer :end_month

      t.timestamps
    end
  end
end
