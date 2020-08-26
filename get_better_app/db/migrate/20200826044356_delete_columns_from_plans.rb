class DeleteColumnsFromPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :goal_id
    remove_column :plans, :objective_id 
    remove_column :plans, :strategy_id  
    remove_column :plans, :tactic_id
  end
end
