class CreateCombatStates < ActiveRecord::Migration
  def change
    create_table :combat_states do |t|
      t.integer :character_id
      t.integer :combat_id

      t.timestamps
    end
  end
end
