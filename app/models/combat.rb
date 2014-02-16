class Combat < ActiveRecord::Base
	belongs_to :user
	has_many :combat_states
	has_many :characters, through: :combat_state
end
