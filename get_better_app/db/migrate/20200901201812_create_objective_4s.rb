class CreateObjective4s < ActiveRecord::Migration
  def change
    create_table :objective_4s do |t|
        t.string :name
        t.text :description
        t.integer :goal_id
      t.timestamps null: false
    end
  end
end
