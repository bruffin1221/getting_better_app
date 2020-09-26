class AddColumnsTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :name, :string
    add_column :tasks, :description, :string
    add_column :tasks, :tactic_id, :integer 
  end
end
