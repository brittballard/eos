class AddScaleToFinalLumpSumPercentage < ActiveRecord::Migration
  def change
	  change_column(:final_lump_sums, :percentage, :decimal, :precision =>10, :scale => 5)
  end
end
