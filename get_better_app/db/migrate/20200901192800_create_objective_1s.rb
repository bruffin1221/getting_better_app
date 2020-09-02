class CreateObjective1s < ActiveRecord::Migration
  def change
    create_table :objective_1s do |t|
      t.string :name
      t.text :description
      t.integer :goal_id

      t.timestamps null: false
    end
  end
end


