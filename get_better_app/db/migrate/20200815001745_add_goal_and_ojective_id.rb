class AddGoalAndOjectiveId < ActiveRecord::Migration
  def change
    add_column :strategies, :goal_id, :integer
    add_column :strategies, :objective_id, :integer
  end
end
