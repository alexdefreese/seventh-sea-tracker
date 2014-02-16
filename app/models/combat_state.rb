class CombatState < ActiveRecord::Base
	belongs_to :character
	belongs_to :combat
	has_many :action_dice
end
