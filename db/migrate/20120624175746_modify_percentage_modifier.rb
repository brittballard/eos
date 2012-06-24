class ModifyPercentageModifier < ActiveRecord::Migration
  def up
      change_column(:percentage_modifiers, :percentage_to_pay, :decimal, :precision => 10, :scale => 5)
  end

  def down
    change_column(:percentage_modifiers, :percentage_to_pay, :decimal, :precision => 10, :scale => 0)
  end
end
