class CreateTasksTable < ActiveRecord::Migration
  
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :strategy_id
      
      t.timestamps null: false
    end
  end
  
end
