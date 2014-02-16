class CreateActionDice < ActiveRecord::Migration
  def change
    create_table :action_dice do |t|
      t.integer :combat_state_id
      t.integer :value

      t.timestamps
    end
  end
end
