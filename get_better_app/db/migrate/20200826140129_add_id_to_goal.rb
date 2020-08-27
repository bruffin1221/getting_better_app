class AddIdToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :plan_id, :integer
  end
end
