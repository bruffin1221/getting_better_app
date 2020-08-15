class AddGoalId < ActiveRecord::Migration
  def change
    add_column :objectives, :goal_id, :integer
  end
end
