class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :plan_id
      t.integer :goal_id
      t.integer :objective_id
      t.integer :strategy_id
      t.integer :tactic_id
      t.timestamps null: false
    end
  end
end
