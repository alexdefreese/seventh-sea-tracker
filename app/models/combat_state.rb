class CombatState < ActiveRecord::Base
	belongs_to :character
	belongs_to :combat
end
