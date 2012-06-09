class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.datetime :date
      t.decimal :amount

      t.timestamps
    end
  end
end
