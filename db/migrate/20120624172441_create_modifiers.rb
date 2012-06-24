class CreateModifiers < ActiveRecord::Migration
  def change
    create_table :modifiers do |t|
      t.references :contract_modifier, :polymorphic => true
      t.timestamps
    end
  end
end
