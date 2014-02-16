class Character < ActiveRecord::Base

	belongs_to :user
	has_many :combat_states
	has_many :combats, through: :combat_state
end
