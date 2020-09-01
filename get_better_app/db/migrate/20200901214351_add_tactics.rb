class AddTactics < ActiveRecord::Migration
  def change
    create_table :tactics do |t|
      t.string :name
      t.text :description
      t.integer :goal_id
      t.integer :objective_1_id
      t.integer :objective_2_id
      t.integer :objective_3_id
      t.integer :objective_4_id
      t.integer :strategy_id

      t.timestamps null: false
    end
  end
end
