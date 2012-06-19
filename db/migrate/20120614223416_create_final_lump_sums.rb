class CreateFinalLumpSums < ActiveRecord::Migration
  def change
    create_table :final_lump_sums do |t|
      t.decimal :percentage

      t.timestamps
    end
  end
end
