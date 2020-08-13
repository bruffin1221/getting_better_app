class AddGoalColumn < ActiveRecord::Migration
  def change
    add_column :goals, :name, :string
    add_column :goals, :description, :text
    add_column :goals, :deadline, :date
  end
end
