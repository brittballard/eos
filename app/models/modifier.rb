class Modifier < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :contract_modifier, :polymorphic => true
end
